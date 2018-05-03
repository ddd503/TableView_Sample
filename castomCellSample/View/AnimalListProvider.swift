//
//  AnimalListProvider.swift
//  castomCellSample
//
//  Created by kawaharadai on 2018/03/09.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

class AnimalListProvider: NSObject {

    var animalData = [Animal]()
}

extension AnimalListProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalListCell",
                                                       for: indexPath) as? AnimalListCell else {
                                                        fatalError("セルがないです。")
        }
        
        cell.animalImage = UIImage(named: animalData[indexPath.row].imageName)
        cell.animalText = animalData[indexPath.row].characteristic
        
        return cell
    }

}
