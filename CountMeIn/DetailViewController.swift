//
//  DetailViewController.swift
//  CountMeIn
//
//  Created by Chinmay Desai on 29/09/2016.
//  Copyright © 2016 Chinmay Desai. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    // MARK: Variables
    
    
    var detailItem: Count? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                navigationItem.title = detail.countName
                label.text = String(detail.countValue)
            }
        }
    }

    // MARK: Actions
    
    @IBAction func increaseCount(sender: UIButton) {
        detailItem?.countValue = (detailItem?.countValue)! + 1
        detailDescriptionLabel.textColor = UIColor(red: 37/255, green: 162/255, blue: 78/255, alpha: 1.0)
        self.configureView()
    }
    
    @IBAction func decreaseCount(sender: UIButton) {
        if(detailItem?.countValue > 0) {
            detailItem?.countValue = (detailItem?.countValue)! - 1
            detailDescriptionLabel.textColor = UIColor(red: 213/255, green: 29/255, blue: 36/255, alpha: 1.0)
            self.configureView()
        }
    }
    
    @IBAction func resetCount(sender: UIButton) {
        if(detailItem?.countValue > 0) {
            detailItem?.countValue = 0
            self.configureView()
        }
    }
}

