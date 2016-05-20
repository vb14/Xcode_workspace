//
//  Zombie.swift
//  MonsterTown
//
//  Created by Vishal Bhatnagar on 4/19/16.
//  Copyright © 2016 Vishal Bhatnagar. All rights reserved.
//

import Foundation

//One of the main features of classes that structures do not have is inheritance

//Listing 15.12 Zombie creation (Zombie.swift)
class Zombie: Monster {
    var walksWithLimp = true
    
    //override func terrorizeTown() {
    //Listing 15.13 Preventing overriding of terrorizeTown() (Zombie.swift)
    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
    }
    
    //Listing 15.16 changeName(_:walksWithLimp:) (Zombie.swift)
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}