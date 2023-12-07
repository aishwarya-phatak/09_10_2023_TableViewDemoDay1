//
//  SecondViewController.swift
//  09_10_2023_TableViewDemoDay1
//
//  Created by Vishal Jagtap on 07/12/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    var studentImageArray = [
        UIImage(named: "nature"),
        UIImage(named: "nature_image2"),
        UIImage(named: "nature_image3"),
        UIImage(named: "nature_image4")]
    
    var studentFirstNameArray = ["ABC","ABC","XYZ","XYZ"]
    var studentLastNameArray = ["ABC", "ABC", "XYZ", "XYZ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            initializeStudentTableView()
            registerXIBWithStudentTableView()
    }
    
    //MARK : delegate and dataSource properties assigned to self - current instance
    func initializeStudentTableView(){
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    //MARK : Register XIB with TableView
    func registerXIBWithStudentTableView(){
        let uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: "StudentTableViewCell")
    }
}

//MARK : UITableViewDataSource
extension SecondViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentFirstNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        
        studentTableViewCell.studentImageView.image = studentImageArray[indexPath.row]
        studentTableViewCell.studentFirstNameLabel.text = studentFirstNameArray[indexPath.row]
        studentTableViewCell.studentLastNameLabel.text = studentLastNameArray[indexPath.row]
        
        return studentTableViewCell
    }
}

extension SecondViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        105.0
    }
}
