//
//  UIAlert+EXTENSIONS.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit


extension UIViewController {
    
    func filteredData(viewModel: (PhotosViewModel), collectionView: UICollectionView, vehicleName: RoverName) {
        
        let alert = UIAlertController(title: "Camera Types", message: "Select a camera type", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: CameraType.all.rawValue, style: .default, handler: {  (_) in
            viewModel.load(vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.FHAZ.rawValue, style: .default, handler: {  (_) in
            viewModel.load(with: CameraType.FHAZ, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.RHAZ.rawValue, style: .default, handler: {  (_) in
            viewModel.load(with: CameraType.RHAZ, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.MAST.rawValue, style: .default, handler: {  (_) in
            viewModel.load(with: CameraType.MAST, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.CHEMCAM.rawValue, style: .default, handler: {  (_) in
            viewModel.load(with: CameraType.CHEMCAM, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.MAHLI.rawValue, style: .default, handler: { (_) in
            viewModel.load(with: CameraType.MAHLI, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.MARDI.rawValue, style: .default, handler: { (_) in
            viewModel.load(with: CameraType.MARDI, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.NAVCAM.rawValue, style: .default, handler: {  (_) in
            viewModel.load(with: CameraType.NAVCAM, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.PANCAM.rawValue, style: .default, handler: { (_) in
            viewModel.load(with: CameraType.PANCAM, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: CameraType.MINITES.rawValue, style: .default, handler: { (_) in
            viewModel.load(with: CameraType.MINITES, vehicleName: vehicleName)
            collectionView.reloadData()
        }))
        
        
        alert.addAction(UIAlertAction(title: CameraType.cancel.rawValue, style: .cancel, handler: { action in
        }))
        
        self.present(alert, animated: true)
    }
    
}
