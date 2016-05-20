//
//  Town.swift
//  MonsterTown
//
//  Created by Vishal Bhatnagar on 4/19/16.
//  Copyright © 2016 Vishal Bhatnagar. All rights reserved.
//

import Foundation

//A struct is a type that groups a set of related chunks of data together in memory. You use structs when you would like to group data together under a common type

//Making Town a struct encapsulates its data within a single type

//Listing 15.2 Declaring a struct (Town.swift)
struct Town {
    //Listing 16.1 Adding a region constant (Town.swift)
    //Listing 16.11 Making region a stored type property (Town.swift)
    static let region = "South"
    //Listing 15.3 Adding properties (Town.swift)
    //Listing 16.9 Observing population changes (Town.swift)
    var population = 5422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    
    
    var numberOfStoplights = 4
    
    //Listing 16.2 Setting up the Size enum (Town.swift)
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    //Listing 16.3 Setting up townSize (Town.swift)
    //lazy var townSize: Size = {
    //Listing 16.6 Using a computed property (Town.swift)
    var townSize: Size {
        get{
            switch self.population {
            case 0...10000:
                return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }//()
    
    //Instance Methods
    //Listing 15.5 Letting Town describe itself (Town.swift)
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    //Listing 15.7 A mutating method to increase population (Town.swift)
    mutating func changePopulation(amount: Int) {
        population += amount
    }
    
    
}