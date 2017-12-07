//
//  PhotoSearchPresenter.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol PhotoSearchPresenterInput: class {
    func fetchPhotos()
}

class PhotoSearchPresenter: PhotoSearchPresenterInput {
    
    var interactor: PhotoSearchInteractorInput!
    
    // Presenter saysinteractor ViewController needs photos
    func fetchPhotos(){
        interactor.fetchAllPhotosFromDataManager()
    }
    
}
