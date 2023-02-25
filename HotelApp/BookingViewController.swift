//
//  BookingViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 20.02.23.
//

import UIKit



class BookingViewController: UIViewController {
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    

    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        let someDateString = dateFormatter.string(from: sender.date)
        
        topLabel.text = someDateString
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bookCleanupBtn(_ sender: UIButton) {
        
        guard let topLabel = topLabel.text else { return }
        
        let notificationResponse = ["CleanupDate": topLabel, "roomNum": "47"]
        
        NotificationCenter.default.post(name: Notification.Name("Cleanup"), object: nil, userInfo: notificationResponse)
        
        
    }
    /*
     
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
