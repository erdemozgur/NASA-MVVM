//
//  PhotosViewContracts.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

protocol PhotosViewModelProtocol {
    
    var delegate: PhotosViewModelDelegate? {get set}
    func load(vehicleName: RoverName)
    func load(with type: CameraType, vehicleName: RoverName)
    func selectPhoto(at index: Int)
    
}

enum PhotosViewModelOutput {
    case showPhotos([VehicleInfo])
}

enum PhotosViewRoute {
    case detail(PhotosDetailViewModelProtocol)
}

protocol PhotosViewModelDelegate: class {
    func handleViewModelOutput(_ output: PhotosViewModelOutput)
    func navigate(to route: PhotosViewRoute)
}
