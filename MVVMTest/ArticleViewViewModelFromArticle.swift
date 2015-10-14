//
//  ArticleViewViewModelFromArticle.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-09.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import Foundation
import UIKit

class ArticleViewViewModelFromArticle: ArticleViewViewModel {
    
    let article: Article
    let title: String
    let body: String
    let date: String
    var thumbnail: UIImage?
    
    init(_ article: Article) {
        self.article = article
        
        self.title = article.title
        self.body = article.body
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        self.date = dateFormatter.stringFromDate(article.date)
        
        let downloadTask = NSURLSession.sharedSession().downloadTaskWithURL(article.thumbnail) {
            [weak self] location, response, error in
            if let data = NSData(contentsOfURL: location!) {
                if let image = UIImage(data: data) {
                    self?.thumbnail = image
                }
            }
        }
        
        downloadTask.resume()
        
    }
}