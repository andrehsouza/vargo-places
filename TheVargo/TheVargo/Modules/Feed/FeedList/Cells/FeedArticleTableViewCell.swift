//
//  FeedArticleTableViewCell.swift
//  TheVargo
//
//  Created by Andre Souza on 12/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import UIKit
import AlamofireImage
import HCSStarRatingView

class FeedArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellCardView: VCardView!
    @IBOutlet weak var cellRatingStars: HCSStarRatingView!
    
    var item: PlaceItemInterface? {
        didSet {
            if let urlString = item?.imageURL, let url = URL(string: EndPoints.imageUrl(photoReference: urlString).complement) {
                cellImageView.af_setImage(withURL: url, placeholderImage: #imageLiteral(resourceName: "ic_place_holder"))
            } else {
                cellImageView.image = #imageLiteral(resourceName: "ic_place_holder")
            }
            
            cellTitleLabel.text = item?.title
            cellRatingStars.value = CGFloat(item?.rating ?? 0)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupLayout() {
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = .clear
        backgroundColor = .clear
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.groupTableViewBackground.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 8, height: -7)
        layer.shadowRadius = 6
        
        layer.shadowPath = UIBezierPath(roundedRect: cellCardView.bounds, cornerRadius: cellCardView.cornerRadius).cgPath
    }
    
}
