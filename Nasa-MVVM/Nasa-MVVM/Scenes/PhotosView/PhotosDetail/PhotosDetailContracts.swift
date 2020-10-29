//
//  PhotosDetailContracts.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

protocol PhotosDetailViewModelDelegate: class {
    func showDetail(_ presentation: PhotosDetailPresentation)
}

protocol PhotosDetailViewModelProtocol {
    var delegate: PhotosDetailViewModelDelegate? { get set }
    func load()
}
