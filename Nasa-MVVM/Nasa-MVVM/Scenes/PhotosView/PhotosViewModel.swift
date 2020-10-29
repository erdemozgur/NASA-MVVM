//
//  PhotosViewModel.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

final class PhotosViewModel: NSObject, PhotosViewModelProtocol {
    
    var delegate: PhotosViewModelDelegate?
    private var vehicleInfos = [VehicleInfo]()
    
    func load(vehicleName: RoverName) {
        
        let photosRequets = PhotosRequest(vehicleName: vehicleName)
        photosRequets.fetchAllPhotos { (result) in
            
            switch result {
            case .success(let photos):
                self.vehicleInfos = photos.photos
                self.notify(.showPhotos(self.vehicleInfos))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func load(with type: CameraType, vehicleName: RoverName) {
        let photosRequets = PhotosRequest(vehicleName: vehicleName)
        photosRequets.fetchAllPhotos { (result) in
            
            switch result {
            case .success(let photos):
                self.vehicleInfos = photos.photos.filter {$0.camera!.name! == type.rawValue}
                self.notify(.showPhotos(self.vehicleInfos))
            case .failure(let error):
                print(error)
            }
        }

    }
    
    func selectPhoto(at index: Int) {
        let vehicle = vehicleInfos[index]
        let viewModel = PhotosDetailViewModel(vehicleInfo: vehicle)
        delegate?.navigate(to: .detail(viewModel))
        
    }
    
    private func notify(_ output: PhotosViewModelOutput) {
        delegate?.handleViewModelOutput(output)
    }
    
    
}
