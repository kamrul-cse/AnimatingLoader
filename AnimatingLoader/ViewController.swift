//
//  ViewController.swift
//  AnimatingLoader
//
//  Created by Md. Kamrul Hasan on 7/9/18.
//  Copyright © 2018 Md. Kamrul Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundIV: UIImageView!
    @IBOutlet weak var centerIV: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rotateView(targetView: backgroundIV)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func rotateView(targetView: UIView, duration: Double = 1.0) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: CGFloat(M_PI))
        }) { finished in
            self.rotateView(targetView: targetView, duration: duration)
        }
    }

}

