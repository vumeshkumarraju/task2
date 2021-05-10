//
//  TableViewCell.swift
//  Table
//
//  Created by V UMESH KUMAR RAJU on 10/05/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet var CView: UIView!
    @IBOutlet var Speed: UILabel!
    @IBOutlet var mass: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
