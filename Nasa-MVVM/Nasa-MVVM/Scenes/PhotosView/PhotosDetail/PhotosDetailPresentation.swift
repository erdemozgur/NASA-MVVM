//
//  PhotosDetailPresentation.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

struct PhotosDetailPresentation: Equatable {
    
    let imageURL: String?
    let roverName: String?
    let cameraName: String?
    let roverStatus: String?
    let launchDate: String?
    let landingDate: String?
    
}

extension PhotosDetailPresentation{
    
    init(photo: VehicleInfo) {
        self.init(imageURL: photo.img_src, roverName: photo.rover?.name, cameraName: photo.camera?.name, roverStatus: photo.rover?.status, launchDate: photo.rover?.launch_date, landingDate: photo.rover?.landing_date)
    }
    
}
