//
//  ArticleViewViewModel.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-09.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import Foundation

protocol ArticleViewViewModel {
    
    var title: String { get }
    var body: String { get }
    var date: String { get }
    
}