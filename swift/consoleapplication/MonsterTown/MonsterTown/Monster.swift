//
//  Monster.swift
//  MonsterTown
//
//  Created by Vishal Bhatnagar on 4/19/16.
//  Copyright © 2016 Vishal Bhatnagar. All rights reserved.
//

import Foundation

//Listing 15.9 Monster setup (Monster.swift)
class Monster {
    //Listing 15.10 Defining the Monster class (Monster.swift)
    var town: Town?
    var name = "Monster"
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}