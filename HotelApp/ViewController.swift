//
//  ViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 14.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entryImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        animateFade()
    }
    
    func style() {
        entryImage.layer.cornerRadius = 20
        entryImage.alpha = 0
    }

    
    func animateFade() {
        UIView.animate(withDuration: 0.6) {
            self.entryImage.alpha = 1
        }
    }
}

