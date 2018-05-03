//
//  AnimalListCell.swift
//  castomCellSample
//
//  Created by kawaharadai on 2018/03/09.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

class AnimalListCell: UITableViewCell {

    @IBOutlet private weak var animalPicture: UIImageView!
    @IBOutlet private weak var animalDescription: Padding!
    
    var animalImage: UIImage? {
        didSet {
            animalPicture.image = animalImage
            setLayer()
        }
    }
    
    var animalText: String? {
        didSet {
            if
                let text = animalText,
                text.isEmpty {
                animalDescription.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                return
            }
            animalDescription.text = animalText
            animalDescription.isHidden = false
        }
    }
    
    private func setLayer() {
        animalPicture.layer.masksToBounds = true
        animalPicture.layer.cornerRadius = 10
        animalDescription.layer.masksToBounds = true
        animalDescription.layer.cornerRadius = 10
    }
}
