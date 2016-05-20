//
//  main.swift
//  MonsterTown
//
//  Created by Vishal Bhatnagar on 4/19/16.
//  Copyright © 2016 Vishal Bhatnagar. All rights reserved.
//

import Foundation
//Listing 15.1 Removing “Hello, World!” (main.swift)
//print("Hello, World!")

//Listing 15.4 Creating an instance of Town (main.swift)
var myTown = Town()
//print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")

//Listing 15.6 Calling your new instance method (main.swift)
//myTown.printTownDescription()

//Listing 15.8 Increasing the population (main.swift)
myTown.changePopulation(500)
//delete the code that prints the town’s description. delete the code that created a generic instance of the Monster type.
//myTown.printTownDescription()

//Listing 15.11 Setting a generic monster loose (main.swift)
//let gm = Monster()
//gm.town = myTown
//gm.terrorizeTown()

//Listing 15.15 Who’s afraid of fredTheZombie? (main.swift)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

//Listing 15.17 Fred the Zombie (main.swift)
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)