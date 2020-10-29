//
//  VehicleInfo.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

struct Photos: Codable {
    
    var photos: [VehicleInfo]
}

struct VehicleInfo: Codable{
    
    var id: Int?
    var sol: Int?
    var img_src: String?
    var earth_date: String?
    var rover: Rover?
    var camera: Camera?

}

struct Camera: Codable {
    
    var id: Int?
    var name: String?
    var rover_id: Int?
    var full_name: String?
    
}

struct Rover: Codable {
    
    var id: Int?
    var name: String?
    var landing_date: String?
    var launch_date: String?
    var status: String?
    
}

enum RoverName: String {
    
    case curiosity = "curiosity"
    case opportunity = "opportunity"
    case spirit = "spirit"
    
}
