//
//  FeedDetailViewController.swift
//  TheVargo
//
//  Created by Andre Souza on 09/07/2018.
//  Copyright (c) 2018 AndreSamples. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import AlamofireImage
import HCSStarRatingView

final class FeedDetailViewController: VBaseViewController {
    

    @IBOutlet weak var placeImageView: VImageView!
    
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeRatingView: HCSStarRatingView!
    
    @IBOutlet weak var placeAddressLbl: UILabel!
    @IBOutlet weak var placeAddressValueLbl: UILabel!
    
    @IBOutlet weak var placePhoneLbl: UILabel!
    @IBOutlet weak var placePhoneValueLbl: UILabel!
    
    @IBOutlet weak var placeMapTitleLabel: UILabel!
    @IBOutlet weak var placeMapImage: UIImageView!
    

    // MARK: - Public properties -
  
    var presenter: FeedDetailPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
}

// MARK: - Functions -

extension FeedDetailViewController {
    
    private func initialSetup() {
        
    }
    
}

// MARK: - Extensions -

extension FeedDetailViewController: FeedDetailViewInterface {
    
    func showLoading(_ loading: Bool) {
        if loading {
            showFenceLoading()
        } else {
            hideFenceView()
        }
    }
    
    func showError(error: ErrorInterface, target: Any? = nil, action: Selector? = nil) {
        showFenceError(error: error, target: target, action: action)
    }
    
    func showPlaceInfo(_ item: PlaceDetailInterface) {
        
    }
    

}



