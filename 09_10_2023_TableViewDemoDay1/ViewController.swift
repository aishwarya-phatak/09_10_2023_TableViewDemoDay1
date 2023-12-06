//
//  ViewController.swift
//  09_10_2023_TableViewDemoDay1
//
//  Created by Vishal Jagtap on 05/12/23.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var studentTableView: UITableView!
    var studentNames = ["Rutik", "Harsh", "Aditya", "Gajanan", "Ashutosh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
}

//MARK : UITableViewDataSource
extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let basicCell = self.studentTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
    
        basicCell.textLabel?.text = studentNames[indexPath.row]
        
        if indexPath.section % 2 == 0{
            basicCell.backgroundColor = .cyan
        } else {
            basicCell.backgroundColor = .orange
        }
        
        print("Section Id -- \(indexPath.section) Row Id -- \(indexPath.row)")
        return basicCell
    }
}

//MARK : UITableViewDelegate
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }
}
