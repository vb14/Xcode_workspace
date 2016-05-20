//
//  main.m
//  chapter3
//
//  Created by Vishal Bhatnagar on 10/27/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

//interface section

@interface Fraction : NSObject
/*The leading minus sign (-) tells the Objective-C compiler that the method is an instance method. The only other option is a plus sign (+), which indicates a class method. A class method is one that performs some operation on the class itself, such as creating a new instance of the class.*/
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

//3.4
-(int) numerator;
-(int) denominator;

@end

//implementation section

@implementation Fraction // OR "@implementation Fraction: NSObject" however, this is optional and typically not done.
{
    int numerator;
    int denominator;
    /*You can also declare the instance variables for a class in the interface section. The ability to do it in the implementation section was added as of Xcode 4.2 and is considered a better way to define a class.*/
}

//you can have the compiler automatically generate methods for you by using a special @synthesize directive
- (void) print //Alternatively, you can execute a return without any specified value, like "return;"
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

//3.4
-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}
@end

//Exercise 7
@interface XYPoint : NSObject
-(void) setX: (int) x;
-(void) setY: (int) y;
-(int) X;
-(int) Y;

@end

@implementation XYPoint
{
    int X, Y;
}
-(void) setX: (int) x
{
    X = x;
}
-(void) setY: (int) y
{
    Y = y;
}
-(int) X
{
    return X;
}
-(int) Y
{
    return Y;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //3.1
        int numerator = 1;
        int denominator = 3;
        NSLog (@"The fraction is %i/%i", numerator, denominator);
        
        //3.2
        Fraction *myFraction;
        
        /*The asterisk (*) in front of myFraction in its declaration says that myFraction is actually a reference (or pointer) to a Fraction object. The variable myFraction doesn’t actually store the fraction’s data (that is, its numerator and denominator values). Instead, it stores a reference— which is a actually a memory address—indicating where the object’s data is located in memory. When you first declare myFraction as shown, its value is undefined as it has not been set to any value and does not have a default value. We can conceptualize myFraction as a box that holds a value. Initially the box contains some undefined value, as it hasn’t been assigned any value*/
        
        
        //Create an instance of a Fraction
        
        myFraction = [Fraction alloc]; //The alloc method is guaranteed to zero out all of an object’s instance variables
        myFraction = [myFraction init]; //The init method initializes the instance of a class (initialize a specific Fraction object). The init method returns a value—namely, the initialized object. init is an instance method, not a class method.
        
        //Another way to allocate a new instance of a class and then initialize it is
        //Fraction *myFraction = [[Fraction alloc] init];
        
        /*When you allocate a new object (using alloc, for example) enough space is reserved in memory to store the object’s data, which includes space for its instance variables, plus a little more. The location of where that data is stored (the reference to the data) is returned by the alloc routine, and assigned to the variable myFraction. This all takes place when "myFraction = [Fraction alloc];" is executed*/
        
        // Set fraction to 1/3
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // Display the fraction using the print method
        
        NSLog (@"The value of myFraction is:");
        [myFraction print];
        
        //3.3
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        // Set 1st fraction to 2/3
        
        [frac1 setNumerator: 2];
        [frac1 setDenominator: 3];
        
        // Set 2nd fraction to 3/7
        
        [frac2 setNumerator: 3];
        [frac2 setDenominator: 7];
        
        // Display the fractions
        
        NSLog (@"First fraction is:");
        
        [frac1 print];
        
        NSLog (@"Second fraction is:");
        [frac2 print];
        
        //3.4
        myFraction = [[Fraction alloc] init];
        
        // Set fraction to 1/3
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // Display the fraction using our two new methods
        
        NSLog (@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        
        /*A method called new combines the actions of an alloc and init: Fraction *myFraction = [Fraction new];
         
         It’s generally better to use the two-step allocation and initialization approach so that you conceptually understand that two distinct events are occurring: You’re first creating a new object and then you’re initializing it.
         */
        
        //Exercise 7
        XYPoint *point = [[XYPoint alloc] init];
        [point setX: 2];
        [point setY: 3];
        NSLog(@"The value of the point is (%i, %i)", [point X], [point Y]);
        
    }
    return 0;
}
