//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "mac.jpg")!
let myRGBA = RGBAImage(image: image)!

//pixel at location x is 10 and y is 10
let x=10
let y=10

//now we'll have to create an index as to where in this RGB image this pixel corresponds to.
let index = y * myRGBA.width + x


var pixel = myRGBA.pixels[index]

pixel.red
pixel.green
pixel.blue

pixel.red = 0
pixel.green = 255
pixel.blue = 0 

myRGBA.pixels[index] = pixel

let newImage = myRGBA.toUIImage()































