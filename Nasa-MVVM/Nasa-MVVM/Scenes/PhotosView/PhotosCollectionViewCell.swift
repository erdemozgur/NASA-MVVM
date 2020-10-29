//
//  PhotosCollectionViewCell.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photosImageView: UIImageView!
    
    func downloadImage(url: String){
        photosImageView.downloaded(from: url)
    }
    
}
