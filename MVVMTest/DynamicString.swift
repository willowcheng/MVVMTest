//
//  DynamicString.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-14.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import Foundation

class DynamicString {
    
    typealias Listener = String -> Void
    var listener: Listener?
    
    func bind(listener: Listener?) {
        self.listener = listener
    }
    
    var value: String {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: String) {
        value = v
    }
    
    func bindAndFire(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
}