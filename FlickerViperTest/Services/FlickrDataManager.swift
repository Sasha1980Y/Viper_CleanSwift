//
//  FlickrDataManager.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol FlickrPhotoSearchProtocol: class {
    // read from UserDefault
    func fetchPhotosForSearchText()
    // write to UserDefault
    func saveDataToUserDefault(name: String)
    // pass data from UserDefaults to ViewController
    func passData() -> String
}


class FlickrDataManager: FlickrPhotoSearchProtocol {
    
    func fetchPhotosForSearchText() {
        let defaults = UserDefaults.standard
        if let name = defaults.object(forKey: "Phone") {
            print(name)
        }
        
    }
    
    func saveDataToUserDefault(name: String) {
        let defaults = UserDefaults.standard
        defaults.set(name, forKey: "Phone")
        
    }
    // pass data from UserDefaults to ViewController
    func passData() -> String {
        let defaults = UserDefaults.standard
        if let name = defaults.object(forKey: "Phone") {
            let nameStr = String(describing: name)
            return nameStr
        } else {
            return "Empty"
        }   
    }
    
    
    
}
