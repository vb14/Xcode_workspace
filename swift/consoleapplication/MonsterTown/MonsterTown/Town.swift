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
    //Listing 15.3 Adding properties (Town.swift)
    var population = 5422
    var numberOfStoplights = 4
    
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