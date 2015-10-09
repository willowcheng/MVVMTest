//
//  Article.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-09.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import Foundation

class Article {
    var title: String = ""
    var body: String = ""
    var date: NSDate = NSDate(timeIntervalSince1970: 1)
    var thumbnail: NSURL = NSURL(string: "http://www.google.ca")!
    var saved: Bool = true
}