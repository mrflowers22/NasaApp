//
//  ViewController.swift
//  NASA
//
//  Created by Michael Flowers on 2/11/20.
//  Copyright © 2020 Michael Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var potdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        POTDController.shared.fetchPOTDImageURL { (url, error) in
            if let error = error {
                print("Error in file: \(#file) in the body of the function: \(#function)\n on line: \(#line)\n Readable Error: \(error.localizedDescription)\n Technical Error: \(error)\n")
                return
            }
            
            guard let url  = url else {
                print("Error in file: \(#file), in the body of the function: \(#function) on line: \(#line)\n")
                return
        }
            
            POTDController.shared.fetchImage(url: url) { (image, error) in
                if let error = error {
                    print("Error in file: \(#file) in the body of the function: \(#function)\n on line: \(#line)\n Readable Error: \(error.localizedDescription)\n Technical Error: \(error)\n")
                    return
                }
                guard let image =  image else {
                    print("Error in file: \(#file), in the body of the function: \(#function) on line: \(#line)\n")
                    return
                }
                DispatchQueue.main.async {
                    self.potdImageView.image =  image
                }
                print("image we got back data: \(image.description)")
            }
        }
    }
    
    
    @IBAction func marsButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func EarthButtonTapped(_ sender: UIButton) {
    }
}




