//
//  PhotosRequest.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

struct PhotosRequest {
    
    let resource: URL
    init(vehicleName: RoverName) {
        
        let resourceString = "https://api.nasa.gov/mars-photos/api/v1/rovers/\(vehicleName.rawValue)/photos?sol=1000&api_key=mwJGIWgdh6hUuasoyjFezYKsDtSEemTcj8xelRKl"
        
        guard let resourceURL = URL(string: resourceString) else {
          fatalError()
        }
        self.resource = resourceURL
        
    }
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    func fetchAllPhotos(completion: @escaping(Result<Photos>) -> Void) {
    
        let dataTask = URLSession.shared
            .dataTask(with: self.resource) { (data, _, error) in
                guard let jsonData = data else {
                    completion(.failure(Error.serializationError(internal: error as! Error)))
                    return
                }
                do {
                    let response = try JSONDecoder().decode(Photos.self, from: jsonData)
                    completion(.success(response))
                }
                catch {
                    completion(.failure(Error.serializationError(internal: error)))
                    
                }
                
            }
        dataTask.resume()
    
    }
    
    
    
    
    
}
