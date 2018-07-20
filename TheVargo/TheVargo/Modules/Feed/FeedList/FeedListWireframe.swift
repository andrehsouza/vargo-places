//
//  FeedListWireframe.swift
//  TheVargo
//
//  Created by Andre Souza on 09/07/2018.
//  Copyright (c) 2018 AndreSamples. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class FeedListWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(type: .feed)

    // MARK: - Module setup -
    
    init() {
        let moduleViewController = _storyboard.instantiateViewController(ofType: FeedListViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = FeedListInteractor()
        let presenter = FeedListPresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension FeedListWireframe: FeedListWireframeInterface {

    func navigate(to option: FeedListNavigationOption) {
        switch option {
        case .detail(let placeId):
//            _openFeedDetail(with: feedContent)
            break
        }
    }
    
//    private func _openFeedDetail(with feedContent: FeedContent) {
//        if let split = viewController.splitViewController {
//            let controllers = split.viewControllers
//            if split.isCollapsed {
//                navigationController?.pushWireframe(FeedDetailWireframe(feedContent: feedContent))
//            } else {
//                let detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? FeedDetailViewController
//                detailViewController?.presenter.setFeedDetailFromSplitViewController(feedContent)
//            }
//        } else {
//          navigationController?.pushWireframe(FeedDetailWireframe(feedContent: feedContent))
//        }
//    }
}
