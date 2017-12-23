//
//  PhotaSearchRouter.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol PhotoSearchRouterInput: class {
    func navigateToPhotoDetail()
}
class PhotoSearchRouting: PhotoSearchRouterInput {
    weak var viewController: PhotoViewController!
    
    func navigateToPhotoDetail() {
        viewController.performSegue(withIdentifier: "detail", sender: nil)
    }
}
