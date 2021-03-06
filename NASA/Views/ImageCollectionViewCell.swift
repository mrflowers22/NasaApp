//
//  ImageCollectionViewCell.swift
//  NASA
//
//  Created by Michael Flowers on 2/12/20.
//  Copyright © 2020 Michael Flowers. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func prepareForReuse() {
        photoImageView.image = #imageLiteral(resourceName: "MarsPlaceholder")
        
        super.prepareForReuse()
    }
}
