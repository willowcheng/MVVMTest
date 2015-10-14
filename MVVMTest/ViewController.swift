//
//  ViewController.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-09.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var bodyTextView: UITextView
//    var titleLabel: UILabel
//    var dateLabel: UILabel
//    var thumbnailImageView: UIImageView
//    
//    var viewModel: ArticleViewViewModel {
//        didSet {
//            titleLabel.text = viewModel.title
//            bodyTextView.text = viewModel.body
//            dateLabel.text = viewModel.date
//            thumbnailImageView.image = viewModel.thumbnail
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let name = DynamicString("Steve")
        let nameLabel = UILabel()
        
        name.bindAndFire {
            nameLabel.text = $0
        }
        
        print(nameLabel.text)
        
        name.value = "Time"
        print(nameLabel.text)
        
        name.value = "Groot"
        print(nameLabel.text)
        
        genericDynamicOperation()
    }
    
    func genericDynamicOperation() {
        let name = Dynamic("Steve")
        let alive = Dynamic(false)
        let products = Dynamic(["Macintosh", "iPod", "iPhone"])
        products.bindAndFire {
            print("First product is \($0.first)")
        }
        
        products.value[0] = "iPad"
    }


}

