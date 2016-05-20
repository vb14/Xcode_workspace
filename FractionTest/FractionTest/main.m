//
//  main.m
//  FractionTest
//
//  Created by Vishal Bhatnagar on 10/31/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //7.1
        Fraction *myFraction = [[Fraction alloc] init];
        // set fraction to 1/3
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        // display the fraction
        NSLog (@"The value of myFraction is:");
        [myFraction print];
        
        /* Accessing Properties Using the Dot Operator
         
         instance.property = value
         
         is the same as
         
         [instance setProperty: value]
         */
        
        //7.2
        myFraction = [[Fraction alloc] init];
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        NSLog (@"The numerator is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
        
        Fraction *aFraction = [[Fraction alloc] init];
        [aFraction setTo: 100 over: 200];
        [aFraction print];
        [aFraction setTo: 1 over: 3];
        [aFraction print];
        
        //7.3
        Fraction *bFraction = [[Fraction alloc] init];
        // Set two fractions to 1/4 and 1/2 and add them together
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        // Print the results
        [aFraction print];
        NSLog (@"+");
        [bFraction print];
        NSLog (@"=");
        [aFraction add: bFraction];
        //[aFraction print];
        
        /*Local variables that are basic C data types have no default initial value, so you must set them
         to some value before using them. */
        
        //7.4
        // reduce the result of the addition and print the result
        //[aFraction reduce];
        //[aFraction print];
        
        //7.5
        Fraction *resultFraction;
        resultFraction = [aFraction add: bFraction];
        [resultFraction print];
    }
    return 0;
}
