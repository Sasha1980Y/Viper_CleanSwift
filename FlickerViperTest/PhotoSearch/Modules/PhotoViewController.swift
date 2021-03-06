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
    // read from UserDefault
    func performSearchWith() {
        presenter.fetchPhotos()
    }
    // write to UserDefault
    func performWriteToUserDefault(name: String) {
        presenter.writeData(name: name)
    }
    // return name from UserDefault
    func returnNameFromUserDefaultPresenter() -> String {
        return presenter.returnNameFromUserDefaultPresenter()
    }

    @IBAction func saveName(_ sender: UIButton) {
        /*
        let defaults = UserDefaults.standard
        if let name = enterNameTextField.text {
            defaults.set(name, forKey: "Phone")
        }
        */
        
        if let name = enterNameTextField.text {
            performWriteToUserDefault(name: name)
        }
        
    }
    
    @IBAction func getName(_ sender: UIButton) {
        
        /*
         // here only print name
        performSearchWith()
        */
        
        nameLabel.text = returnNameFromUserDefaultPresenter()
        
        /*
        let defaults = UserDefaults.standard
        if let name = defaults.object(forKey: "Phone") {
            print(name)
        }
        */
    }
    
    
    
    @IBAction func showSomeVC(_ sender: Any) {
        self.presenter.gotoPhotoDetailScreen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            print("detail")
        } else {
            print("another")
        }
    }
    
}
