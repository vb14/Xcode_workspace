//
//  Fraction.h
//  FractionTest
//
//  Created by Vishal Bhatnagar on 10/31/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;
/*the @property directive in your interface section to identify your prop- erties. These properties are often named the same as your instance variables, although they don’t have to be. In the case of our Fraction class, the two instance variables numerator and denominator fall into this category*/
/*Note that when you use the @property directive you no longer need to declare the correspond- ing instance variable in your implementation section. You can if you want to, but it’s no longer necessary; the compiler takes care of that for you.*/

-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
-(void) setTo: (int) n over: (int) d;  //-(int) set: (int) n: (int) d; also legal. used like this: [aFraction set:1 :3];
-(double) convertToNum;
//-(void) add: (Fraction *) f;
-(void) reduce;
-(Fraction *) add: (Fraction *) f; //the argument to the add: method is a reference to an object from the Fraction class. The asterisk is necessary.

// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f;
// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f;
// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f;
@end
