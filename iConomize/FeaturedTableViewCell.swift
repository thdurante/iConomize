//
//  FeaturedTableViewCell.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 29/11/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {

    @IBOutlet weak var couponImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var partnerName: UILabel!
    @IBOutlet weak var innerViewBackground: UIView!
    @IBOutlet weak var discountBadge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected{
            innerViewBackground.backgroundColor = UIColor.blackColor()
        }
    }
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        
        if highlighted{
            innerViewBackground.backgroundColor = UIColor.darkGrayColor()
        }
    }
}
