//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Xinrui Lu on 7/19/18.
//  Copyright © 2018 AXL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageList = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomIndex: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "ball1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomImage ()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImage()
    }
    func randomImage () {
        randomIndex = Int(arc4random_uniform(6))
        imageView.image = UIImage(named: imageList[randomIndex])
    }
}

