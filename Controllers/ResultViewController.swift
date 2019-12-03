//
//  ResultViewController.swift
//  BodyMassIndex
//
//  Created by Nikolay Pochekuev on 03.12.2019.
//  Copyright © 2019 Nikolay Pochekuev. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backGround.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
        sender.addTarget(self, action: #selector(self.animateButton(sender:)), for: .touchUpInside)
    }
    
    @objc func animateButton(sender: UIButton) {
        self.animateView(sender)
    }
    
    func animateView(_ viewToAnimate: UIView) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
              UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)}, completion: nil)
        }
    }
}
