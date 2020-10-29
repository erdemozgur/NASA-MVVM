//
//  Result.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}


