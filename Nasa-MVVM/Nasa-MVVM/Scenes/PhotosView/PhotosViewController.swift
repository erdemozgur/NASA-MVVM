//
//  ViewController.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

class PhotosViewController: UIViewController {
    
    var viewModel = PhotosViewModel()
    private var vehicleInfos: [VehicleInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.load(vehicleName: RoverName.curiosity)
        
    }

}

extension PhotosViewController: PhotosViewModelDelegate {
    
    func handleViewModelOutput(_ output: PhotosViewModelOutput) {
        switch output {
        case .showPhotos(let vehicles):
            self.vehicleInfos = vehicles
            //print(self.vehicleInfos.first!.camera!.full_name!)
            
        }
    }
    
    func navigate(to route: PhotosViewRoute) {
        
    }
    
    
}

