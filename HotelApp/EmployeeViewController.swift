//
//  EmployeeViewController.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 25.02.23.
//

import UIKit

class EmployeeViewController: UIViewController {

    @IBOutlet weak var employeeTable: UITableView!
    @IBOutlet weak var topLbl: UILabel!
    
    var delegate: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeTable.dataSource = self
        employeeTable.delegate = self
        print(delegate)
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

extension EmployeeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        delegate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notifsToShow = delegate[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as? NotificationCell else { return UITableViewCell() }
        
        
        cell.dateLbl.text = notifsToShow["CleanupDate"]
        cell.roomLbl.text = notifsToShow["roomNum"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
