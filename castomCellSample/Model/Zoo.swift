//
//  Zoo.swift
//  castomCellSample
//
//  Created by kawaharadai on 2018/03/09.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

final class Zoo {
    static func createAnimalList() -> [Animal] {
        
        var animalList = [Animal]()
        if
            let path = Bundle.main.path(forResource: "Animal", ofType: "plist"),
            let dic = NSDictionary(contentsOfFile: path),
            let animals = dic["animals"] as? [[String: Any]] {
            for animal in animals {
                if
                    let imageName = animal["imageName"] as? String,
                    let text = animal["text"] as? String {
                    let data = Animal(imageName: imageName,
                                      characteristic: text)
                    animalList.append(data)
                }
            }
        }
        return animalList
    }
}
