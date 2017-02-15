//
//  BusinessCellTableViewCell.swift
//  Yelp
//
//  Created by Arthur on 2017/2/15.
//  Copyright © 2017年 Timothy Lee. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCell: UITableViewCell {
    
    
    
    @IBOutlet var businessName: UILabel!
    @IBOutlet var poster: UIImageView!
    @IBOutlet var rating: UIImageView!
    @IBOutlet var reviews: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var distance: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var catagory: UILabel!
    var business: Business!
        {
        didSet
        {
            businessName.text = business.name;
            poster.setImageWith(business.imageURL!);
            rating.setImageWith(business.ratingImageURL!);
            reviews.text = "\(business.reviewCount)";
            distance.text = business.distance;
            address.text = business.address;
            catagory.text = business.categories;
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        poster.layer.cornerRadius = 3;
        poster.clipsToBounds = true;
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
