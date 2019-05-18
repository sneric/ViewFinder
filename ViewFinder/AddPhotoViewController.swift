//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Eric Smith on 5/17/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func takeSelfie(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
