//
//  PhotoSearchInteractor.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol PhotoSearchInteractorInput: class {
    func fetchAllPhotosFromDataManager()
}

class PhotoSearchInteractor: PhotoSearchInteractorInput {
    var APIDataManager: FlickrPhotoSearchProtocol!
    
    func fetchAllPhotosFromDataManager() {
       APIDataManager.fetchPhotosForSearchText()
    }
}
