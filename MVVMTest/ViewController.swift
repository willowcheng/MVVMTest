//
//  ViewController.swift
//  MVVMTest
//
//  Created by Liu Cheng on 2015-10-09.
//  Copyright © 2015 Liu Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var viewModel: ArticleViewViewModel {
        didSet {
            titleLabel.text = viewModel.title
            bodyTextView.text = viewModel.body
            dateLabel.text = viewModel.date
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

