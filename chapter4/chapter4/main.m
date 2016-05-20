//
//  main.m
//  chapter4
//
//  Created by Vishal Bhatnagar on 10/28/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

//4.6
@interface Calculator : NSObject

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
/*-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;*/

//Exercise 8 commented out void methods because question asks to have methods have return value.
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

//Exercise 9
-(double) changeSign; // change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared; // accumulator squared

//Exercise 10
-(double) memoryClear;                        // clear memory
-(double) memoryStore;                        // set memory to accumulator
-(double) memoryRecall;                       // set accumulator to memory
-(double) memoryAdd: (double) value;          // add value into memory
-(double) memorySubtract: (double) value;     // subtract value from memory

@end

@implementation Calculator
{
    double accumulator, memory;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

//Exercise 8: change void to double
-(double) add: (double) value
//-(void) add: (double) value
{
    accumulator+=value;
    return accumulator;
}

//Exercise 8: change void to double
-(double) subtract:(double)value
//-(void) subtract:(double)value
{
    accumulator -= value;
    return accumulator;
}

//Exercise 8: change void to double
-(double) multiply:(double)value
//-(void) multiply:(double)value
{
    accumulator *= value;
    return accumulator;
}

//Exercise 8: change void to double
-(double) divide:(double)value
//-(void) divide:(double)value
{
    accumulator /= value;
    return accumulator;
}

//Exercise 9
-(double) changeSign
{
    return -accumulator;
}

-(double) reciprocal
{
    return (1/accumulator);
}

-(double) xSquared
{
    return (accumulator * accumulator);
}

//Exercise 10
-(double) memoryClear
{
    return memory = 0.0;
}

-(double) memoryStore
{
    accumulator = memory;
    return accumulator;
}

-(double) memoryRecall
{
    memory = accumulator;
    return accumulator;
}

-(double)memoryAdd: (double) value
{
    accumulator = value;
    memory += accumulator;
    return accumulator;
}

-(double)memorySubtract: (double) value
{
    accumulator = value;
    memory -= accumulator;
    return accumulator;
}

@end

// Exercise 6
@interface Complex : NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;      // display as a + bi
-(double) real;
-(double) imaginary;

@end

@implementation Complex
{
    double real, imaginary;
}
-(void) setReal:(double)a
{
    real = a;
}

-(void) setImaginary:(double)b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"%f + %fi",real, imaginary);
}

-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}
@end

//7
@interface Rectangle : NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle
{
    int width, height, area, perimeter;
}
-(void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) area
{
    return height * width;
}

-(int) perimeter
{
    return (2 * width + 2 * height);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //4.1
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog (@"integerVar = %i", integerVar);
        NSLog (@"floatingVar = %f", floatingVar);
        NSLog (@"doubleVar = %e", doubleVar);
        NSLog (@"doubleVar = %g", doubleVar);
        NSLog (@"charVar = %c", charVar);
        
        //refer to page 54 and 55 for formatting.
        
        //4.2
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;
        
        result = a - b;      // subtraction
        NSLog (@"a - b = %i", result);
        
        result = b * c;      // multiplication
        NSLog (@"b * c = %i", result);
        
        result = a / c;      // division
        NSLog (@"a / c = %i", result);
        
        result = a + b * c;  // precedence
        NSLog (@"a + b * c = %i", result);
        
        NSLog (@"a * b + c * d = %i", a * b + c * d);
        
        //4.3
        a = 25;
        b = 2;
        float e = 25.0;
        float f = 2.0;
        
        NSLog(@"6 + a / 5 * b = %i", 6 + a / 5 * b);
        NSLog(@"a / b * b = %i", a / b * b);
        NSLog(@"e / f * f = %f", e / f * f);
        NSLog(@"-a = %i", -a);
        
        //4.4
        a = 25, b = 5, c = 10, d = 7;
        NSLog (@"a %% b = %i", a % b);
        NSLog (@"a %% c = %i", a % c);
        NSLog (@"a %% d = %i", a % d);
        NSLog (@"a / d * d + a %% d = %i", a / d * d + a % d);
        
        //4.5
        float f1 = 123.125, f2;
        int i1, i2 = -150;
        
        i1 = f1; // floating to integer conversion
        NSLog (@"%f assigned to an int produces %i", f1, i1);
        
        f1 = i2; // integer to floating conversion
        NSLog (@"%i assigned to a float produces %f", i2, f1);
        
        f1 = i2 / 100; // integer divided by integer
        NSLog (@"%i divided by 100 produces %f", i2, f1);
        
        f2 = i2 / 100.0; // integer divided by a float
        NSLog (@"%i divided by 100.0 produces %f", i2, f2);
        
        f2 = (float) i2 / 100; // type cast operator
        NSLog (@"(float) %i divided by 100 produces %f", i2, f2);
        
        //4.6
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        //[deskCalc add: 200.]
        NSLog(@"The sum is %f", [deskCalc add: 200.]);
        //[deskCalc divide: 15.0];
        NSLog(@"The difference is %f", [deskCalc divide: 15.0]);
        //[deskCalc subtract: 10.0];
        NSLog(@"The quotient is %f", [deskCalc subtract: 10.0]);
        //[deskCalc multiply: 5];
        NSLog(@"The product is %f", [deskCalc multiply: 5]);
        NSLog (@"The result is %g", [deskCalc accumulator]);
        //Exercise 9
        NSLog(@"The change sign of accumulator is %f",[deskCalc changeSign]);
        NSLog(@"The reciprocal of accumulator is %f",[deskCalc reciprocal]);
        NSLog(@"The squared of accumulator is %f",[deskCalc xSquared]);
        
        //Exercises
        
        //2
        //C = (F - 32) / 1.8
        double C;
        int F;
        F = 100;
        C=(F-32) / 1.8;
        NSLog(@"100 deg F in deg C is %f",C);
        
        //3 (What output would you expect from the following program?)
        char g, h;
        g = 'h';
        h = g;
        NSLog (@"h = %c", h);
        
        //4
        //3x^3 - 5x^2 + 6, for x = 2.55
        double total;
        total = 3 * (2.55 * 2.55 * 2.55) - 5 * (2.55 * 2.55) + 6;
        NSLog(@"The total of 3x^3 - 5x^2 + 6, for x = 2.55 is %f", total);
        
        //5
        //(3.31 x 10-8 + 2.01 x 10-7) / (7.16 x 10-6 + 2.01 x 10-8)
        total = (3.31 * 10e-8 + 2.01 * 10e-7) / (7.16 * 10e-6 + 2.01 * 10e-8);
        NSLog(@"The total of 3.31 x 10^-8 + 2.01 x 10^-7) / (7.16 x 10-6 + 2.01 x 10-8 is %f", total);
        
        //6
        Complex *complex = [[Complex alloc] init];
        [complex setReal: 5];
        [complex setImaginary: 9];
        [complex print];
        NSLog(@"%f + %fi",[complex real], [complex imaginary]);
        
        //7
        Rectangle *rect = [[Rectangle alloc] init];
        [rect setWidth: 5];
        [rect setHeight: 80];
        NSLog(@"The width is %i.\nThe height is %i.\nThe area is %i.\nThe perimeter is %i",[rect width],[rect height],[rect area],[rect perimeter]);
        
    }
    return 0;
}
