//
//  FlickrDataManager.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol FlickrPhotoSearchProtocol: class {
    func fetchPhotosForSearchText()
}

class FlickrDataManager: FlickrPhotoSearchProtocol {
    
    func fetchPhotosForSearchText() {
        let defaults = UserDefaults.standard
        if let name = defaults.object(forKey: "Phone") {
            print(name)
        }
        
    }
    
}
