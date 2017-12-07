//
//  PhotoSearchInteractor.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol PhotoSearchInteractorInput: class {
    // read from UserDefault
    func fetchAllPhotosFromDataManager()
    // write to UserDefault
    func writeToUserDefault(name: String)
    // return name from UserDefault
    func returnNameFromUserDefault() -> String
    
}

class PhotoSearchInteractor: PhotoSearchInteractorInput {
    var APIDataManager: FlickrPhotoSearchProtocol!
    
    // read from UserDefault
    func fetchAllPhotosFromDataManager() {
       APIDataManager.fetchPhotosForSearchText()
    }
    // write to UserDefault
    func writeToUserDefault(name: String) {
        APIDataManager.saveDataToUserDefault(name: name)
    }
    // return name from UserDefault
    func returnNameFromUserDefault() -> String {
        return APIDataManager.passData()
    }
    
}
