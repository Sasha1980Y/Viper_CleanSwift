//
//  PhotoViewController.swift
//  FlickerViperTest
//
//  Created by Alexander Yakovenko on 12/6/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import UIKit

protocol PhotoViewControllerOutput {
    func fetchPhotos()
}

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    var presenter: PhotoSearchPresenterInput!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        PhotoSearchAssembly.sharedInstance.configure(self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func performSearchWith() {
        presenter.fetchPhotos()
    }

    @IBAction func saveName(_ sender: UIButton) {
        
        let defaults = UserDefaults.standard
        if let name = enterNameTextField.text {
            defaults.set(name, forKey: "Phone")
        }
        
    }
    
    @IBAction func getName(_ sender: UIButton) {
        performSearchWith()
        
        /*
        let defaults = UserDefaults.standard
        if let name = defaults.object(forKey: "Phone") {
            print(name)
        }
        */
    }
    
}
