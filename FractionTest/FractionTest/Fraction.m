//
//  Fraction.m
//  FractionTest
//
//  Created by Vishal Bhatnagar on 10/31/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

/*If you synthesize your accessor methods, don’t start the names of the properties with the words new, alloc, copy, or init.*/

/*
 @synthesize numerator, denominator; -> tells the Objective-C compiler to generate a pair of getter and setter methods for each of the two properties, numerator and denominator
 
 In general, if you have a property called x, including the following line in your implementation section causes the compiler to automatically synthesize a getter method called x and a setter method called setX:.
    
    synthesize x;
 */

/*You don’t need to use the @synthesize directive. Using the @property directive suffices. The compiler automatically generates the setter and getter for you. However, be advised that if you leave out @synthesize, then the compiler will generate the corresponding instance variables with an underscore (_) character as the first character of its name.*/

/*{
    int numerator;
    int denominator;
}*/
-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}
/*-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}*/
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

// add a Fraction to the reciever

/*-(void) add:(Fraction *)f
{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    
    [self reduce];
}*/

-(Fraction *) add:(Fraction *)f
{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    // result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) subtract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction * result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
