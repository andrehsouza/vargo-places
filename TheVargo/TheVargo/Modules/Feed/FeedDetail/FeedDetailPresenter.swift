//
//  FeedDetailPresenter.swift
//  TheVargo
//
//  Created by Andre Souza on 09/07/2018.
//  Copyright (c) 2018 AndreSamples. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import AVKit

final class FeedDetailPresenter {

    // MARK: - Private properties -

    private unowned let _view: FeedDetailViewInterface
    private let _interactor: FeedDetailInteractorInterface
    private let _wireframe: FeedDetailWireframeInterface
    
    private var _placeId: String?
    private var _place: Place?

    // MARK: - Lifecycle -

    init(wireframe: FeedDetailWireframeInterface,
         view: FeedDetailViewInterface,
         interactor: FeedDetailInteractorInterface,
         placeId: String?) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
        _placeId = placeId
    }
}

// MARK: - Extensions -

extension FeedDetailPresenter: FeedDetailPresenterInterface {
    
    func viewDidLoad() {
        _getDetail()
    }
    
    func setPlaceDetailFromSplitViewController(_ placeId: String) {
        _getDetail()
    }

}

// MARK: - Extensions -

extension FeedDetailPresenter {
    
    private func showStaticMap() {
        if let urlString = VUrl.path(for: .staticMap(location: _place?.location)).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
                let url = URL(string: urlString) {
            do {
                let data = try Data(contentsOf: url, options: NSData.ReadingOptions())
                _view.showStaticMapImage(UIImage(data: data))
            } catch {
                _view.showStaticMapImage(#imageLiteral(resourceName: "ic_place_holder"))
            }
        } else {
            _view.showStaticMapImage(#imageLiteral(resourceName: "ic_place_holder"))
        }
    }
    
    @objc private func _getDetail() {
        guard let placeId = _placeId else { return }
        _view.showLoading(true)
        _interactor.get(placeId: placeId, completion: { [weak self] result in
            self?._handleFeedResult(result)
        })
    }
    
    private func _handleFeedResult(_ result: RequestResultType<PlaceDetail>) {
        switch result {
        case .success(let place):
            _view.showLoading(false)
            self._place = place.result
            _view.showPlaceInfo(place.result)
            showStaticMap()
            break
        case .failure(let errorResponse):
            _view.showError(error: errorResponse, target: self, action: #selector(self._getDetail))
            break
        }
    }
}
