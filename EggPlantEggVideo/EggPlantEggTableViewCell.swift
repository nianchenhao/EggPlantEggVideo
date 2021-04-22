//
//  EggPlantEggTableViewCell.swift
//  EggPlantEggVideo
//
//  Created by 粘辰晧 on 2021/4/18.
//

import UIKit

class EggPlantEggTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eggPlantEggImageView: UIImageView!
    
    @IBOutlet weak var eggPlantEggLabel: UILabel!
    
    @IBOutlet weak var eggPlantEggIntro: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
