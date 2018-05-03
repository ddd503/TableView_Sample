//
//  AnimalListController.swift
//  castomCellSample
//
//  Created by kawaharadai on 2018/03/09.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

class AnimalListController: UIViewController {

    @IBOutlet weak private var animalList: UITableView!
    private let provider = AnimalListProvider()
    
// MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
// MARK: - Private Methods
    private func setup() {
        setupAnimalList()
    }
    
    private func setupAnimalList() {
        provider.animalData = Zoo.createAnimalList()
        animalList.dataSource = provider
        animalList.reloadData()
    }
}
