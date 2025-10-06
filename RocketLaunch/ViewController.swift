//
//  ViewController.swift
//  RocketLaunch
//
//  Created by Влад on 06.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rocketContentView: UIView!
    @IBOutlet weak var rocketImageView: UIImageView!
    @IBOutlet weak var successLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        rocketContentView.isHidden = false
        successLabel.isHidden = true
        let frame = rocketImageView.frame
        rocketImageView.frame.origin.y = 1000
        UIView.animate(withDuration: 3.5, animations: {
            self.rocketImageView.frame = frame
        }) { (_) in
            self.successLabel.isHidden = false
        }
    }
    
}

