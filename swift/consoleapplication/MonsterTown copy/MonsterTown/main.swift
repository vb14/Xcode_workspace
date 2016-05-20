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

//Listing 16.4 Using the lazy townSize property (main.swift)
let ts = myTown.townSize
print(ts)

//Listing 15.6 Calling your new instance method (main.swift)
//myTown.printTownDescription()

//Listing 15.8 Increasing the population (main.swift)
//myTown.changePopulation(500)
myTown.changePopulation(1000000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
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

//Listing 16.8 Using victimPool (main.swift)
print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")//; population: \(fredTheZombie.town?.population)")

//Listing 16.13 “Brains…” (main.swift)
print(Zombie.spookyNoise)

//Listing 16.17 Run away from Zombie (main.swift)
if Zombie.isTerrifying {
    print("Run away!")
}