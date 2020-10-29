//
//  PhotosDetailViewController.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

class PhotosDetailViewController: UIViewController {
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var roverName: UILabel!
    @IBOutlet weak var cameraName: UILabel!
    @IBOutlet weak var roverStatus: UILabel!
    @IBOutlet weak var launchDate: UILabel!
    @IBOutlet weak var landingDate: UILabel!

    var viewModel: PhotosDetailViewModelProtocol!
    var imageURL: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.load()
       
    }
    
}

extension PhotosDetailViewController: PhotosDetailViewModelDelegate {
    
    func showDetail(_ presentation: PhotosDetailPresentation) {
        
        let imageURL = presentation.imageURL!
        self.photoImage.downloaded(from: imageURL)
        self.roverName.text = "Rover Name: " + presentation.roverName!
        self.cameraName.text = "Camera Name: " + presentation.cameraName!
        self.roverStatus.text = "Status: " + presentation.roverStatus!
        self.launchDate.text = "Launch Date: " + presentation.launchDate!
        self.landingDate.text = "Landing Date: " + presentation.landingDate!
        
    }

}
