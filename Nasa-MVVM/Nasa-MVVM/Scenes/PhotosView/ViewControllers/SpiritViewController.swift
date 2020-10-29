//
//  SpiritViewController.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

class SpiritViewController: UIViewController {

    //MARK: - IBOUTLETS
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - PROPERTIES
    var viewModel = PhotosViewModel()
    private var vehicleInfos: [VehicleInfo] = []

    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.load(vehicleName: RoverName.spirit)
        
    }
    
    @IBAction func editButtonPressed() {
        self.filteredData(viewModel: self.viewModel, collectionView: self.collectionView, vehicleName: RoverName.spirit)
    }


}
//MARK: - EXTENSIONS

extension SpiritViewController: PhotosViewModelDelegate {
    
    func handleViewModelOutput(_ output: PhotosViewModelOutput) {
        switch output {
        case .showPhotos(let vehicles):
            self.vehicleInfos = vehicles
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
    }
    
    func navigate(to route: PhotosViewRoute) {
        switch route {
        case .detail(let viewModel):
            let viewController = PhotosDetailBuilder.make(with: viewModel)
            show(viewController, sender: nil)
        }
    }
    
    
}

extension SpiritViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        viewModel.selectPhoto(at: indexPath.row)
    }
    
}

extension SpiritViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.vehicleInfos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CuriosityCell", for: indexPath) as! PhotosCollectionViewCell
        let vehicle = self.vehicleInfos[indexPath.row]
        let vehicleImageURL = vehicle.img_src
        guard vehicleImageURL != nil else { return cell}
        cell.downloadImage(url: vehicleImageURL!)
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 20
        
        return cell
    }
    
}

extension SpiritViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150.0 , height: 150.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return  UIEdgeInsets(top: 15.0, left: 17.0, bottom: 10.0, right: 10.0)
    }
    
}

