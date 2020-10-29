//
//  PhotosDetailBuilder.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

final class PhotosDetailBuilder {
    
    static func make(with viewModel: PhotosDetailViewModelProtocol) -> PhotosDetailViewController {
        let storyboard = UIStoryboard(name: "PhotosView", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PhotosDetailViewController") as! PhotosDetailViewController
        viewController.viewModel = viewModel
        return viewController
        
    }
    
}
