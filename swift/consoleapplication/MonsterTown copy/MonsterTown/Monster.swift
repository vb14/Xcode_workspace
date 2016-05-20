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
    //Listing 16.16 All Monsters are terrifying (Monster.swift)
    static let isTerrifying = true
    
    //Listing 16.14 Generic Monster noise (Monster.swift)
    class var spookyNoise: String {
        return "Grrr"
    }
    
    //Listing 15.10 Defining the Monster class (Monster.swift)
    var town: Town?
    var name = "Monster"
    
    //Listing 16.7 Creating a computed victimPool property with a getter and a setter (Monster.swift)
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}