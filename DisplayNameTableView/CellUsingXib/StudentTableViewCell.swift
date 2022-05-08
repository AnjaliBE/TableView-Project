//
//  StudentTableViewCell.swift
//  CellUsingXib
//
//  Created by Mac on 16/04/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
