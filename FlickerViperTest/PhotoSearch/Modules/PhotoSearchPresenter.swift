//
//  PhotoSearchPresenter.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol PhotoSearchPresenterInput: class {
    // read from UserDefault
    func fetchPhotos()
    // write to UserDefault
    func writeData(name: String)
    // return name from UserDefault
    func returnNameFromUserDefaultPresenter() -> String
}

class PhotoSearchPresenter: PhotoSearchPresenterInput {
    
    var interactor: PhotoSearchInteractorInput!
    
    // Presenter saysinteractor ViewController needs photos
    func fetchPhotos(){
        interactor.fetchAllPhotosFromDataManager()
    }
    // write to UserDefault
    func writeData(name: String) {
        interactor.writeToUserDefault(name: name)
    }
    // return name from UserDefault
    func returnNameFromUserDefaultPresenter() -> String {
        return interactor.returnNameFromUserDefault()
    }
}
