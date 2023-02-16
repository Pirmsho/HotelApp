//
//  ViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 14.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entryImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
    
    @IBAction func logInButtonAction(_ sender: Any) {
        if emailTextField.text == "" || passwordTextField.text == "" {
            showAlert()
        } else if emailTextField.text == "pirmisashvili@gmail.com" && passwordTextField.text == "12345" {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "UserViewController") as? UserViewController
            
            guard let vc else { return }
        
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            showAlert()
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Something went wrong", message: "Looks like your login details are either empty or wrong. Please try again", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(alertAction)
        
        present(alert, animated: true)
    }
    
}

