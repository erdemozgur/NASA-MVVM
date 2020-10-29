//
//  PhotosDetailViewModel.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

final class PhotosDetailViewModel: PhotosDetailViewModelProtocol {
    
    var delegate: PhotosDetailViewModelDelegate?
    private let presentation: PhotosDetailPresentation
    init(vehicleInfo: VehicleInfo) {
        self.presentation = PhotosDetailPresentation(photo: vehicleInfo)
    }
    
    func load() {
        delegate?.showDetail(presentation)
    }
    
}
