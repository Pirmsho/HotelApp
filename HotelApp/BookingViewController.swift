//
//  BookingViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 20.02.23.
//

import UIKit

let cleanup = Cleanup()

class BookingViewController: UIViewController {
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    

    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        let someDateString = dateFormatter.string(from: sender.date)
        
        
        cleanup.getPickedTime(someDateString)
        topLabel.text = cleanup.cleanUpTime
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
