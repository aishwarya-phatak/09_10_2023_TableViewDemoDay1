//
//  StudentTableViewCell.swift
//  09_10_2023_TableViewDemoDay1
//
//  Created by Vishal Jagtap on 07/12/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentImageView: UIImageView!
    @IBOutlet weak var studentFirstNameLabel: UILabel!
    @IBOutlet weak var studentLastNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
