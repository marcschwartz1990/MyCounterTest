//
//  ViewController.swift
//  MyCounter
//
//  Created by Marc-Developer on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = Counter()

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet var incrementButtons: [UIButton]!
    
    @IBAction func touchIncrementButton(_ sender: UIButton) {
        if let buttonTitle = sender.titleLabel?.text {
            if let incrementAmount = Int(buttonTitle) {
                counter.increment(by: incrementAmount)
                updateCountLabel()
            } else {
                print("Could not cast String to Int")
            }
        } else {
            print("Button titleLabel returned nil")
        }
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    func updateCountLabel() {
        countLabel.text = String(counter.count)
    }
}

