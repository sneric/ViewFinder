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

    
    }
    
    @IBAction func takeSelfie(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        }
        
    imagePicker.dismiss(animated: true, completion: nil)
        
    }

}
