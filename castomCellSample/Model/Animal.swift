//
//  Animal.swift
//  castomCellSample
//
//  Created by kawaharadai on 2018/03/09.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

struct Animal {
    var imageName: String
    var characteristic: String?
    
    init(imageName: String, characteristic: String?) {
        self.imageName = imageName
        self.characteristic = characteristic
    }
}
