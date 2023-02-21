//
//  UserViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 16.02.23.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func bookCleanupAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BookingViewController") as? BookingViewController
        
        guard let vc else { return }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}
