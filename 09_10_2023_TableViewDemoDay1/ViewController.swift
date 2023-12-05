//
//  ViewController.swift
//  09_10_2023_TableViewDemoDay1
//
//  Created by Vishal Jagtap on 05/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var studentTableView: UITableView!
    var studentNames = ["Rutik", "Harsh", "Aditya", "Gajanan", "Ashutosh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let basicCell = self.studentTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        basicCell.textLabel?.text = studentNames[indexPath.row]
        print("Section Id -- \(indexPath.section) Row Id -- \(indexPath.row)")
        return basicCell
    }
}
