//
//  main.m
//  chapter6
//
//  Created by Vishal Bhatnagar on 10/30/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

//6.2
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n; -(void) setDenominator: (int) d; -(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    if (denominator == 1 && numerator > 0) {
        NSLog(@"%i",numerator);
    }
    else if(denominator >= 1 && numerator ==0) {
        NSLog(@"%i",numerator);
    }
    NSLog (@" %i/%i ", numerator, denominator);
}
-(void) setNumerator: (int) n
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
}
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end

//6.8
@interface Calculator: NSObject
// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
// arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator: (double) value
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
-(void) add: (double) value
{
    accumulator += value;
}
-(void) subtract: (double) value
{
    accumulator -= value;
}
-(void) multiply: (double) value
{
    accumulator *= value;
}
-(void) divide: (double) value
{
    //accumulator /= value;
    if (value != 0.0)
        accumulator /= value;
    else {
        NSLog (@"Division by zero.");
        accumulator = NAN;
    }
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //6.1
        int number;
        NSLog (@"Type in your number: ");
        //scanf ("%i", &number);
        number = -130;
        if ( number < 0 )
            number = -number;
        NSLog (@"The absolute value is %i", number);
        
        //6.2
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        [aFraction setNumerator: 1]; // 1st fraction is 1/4
        [aFraction setDenominator: 4];
        [aFraction print];
        NSLog (@" =");
        NSLog (@"%g", [aFraction convertToNum]);
        [bFraction print]; // never assigned a value
        NSLog (@" =");
        NSLog (@"%g", [bFraction convertToNum]);
        
        //6.3
        int number_to_test, remainder;
        NSLog (@"Enter your number to be tested: ");
        //scanf ("%i", &number_to_test);
        number_to_test = 47;
        remainder = number_to_test % 2;
        if ( remainder == 0 )
            NSLog (@"The number is even.");
        if ( remainder != 0 )
            NSLog (@"The number is odd.");
        
        //6.4
        NSLog (@"Enter your number to be tested:");
        //scanf ("%i", &number_to_test);
        number_to_test = 47;
        remainder = number_to_test % 2;
        if ( remainder == 0 )
            NSLog (@"The number is even.");
        else
            NSLog (@"The number is odd.");
        
        //6.5
        int year, rem_4, rem_100, rem_400;
        NSLog (@"Enter the year to be tested: ");
        //scanf ("%i", &year);
        year = 1996;
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        if ( (rem_4 == 0 && rem_100 != 0) || rem_400 == 0 )
            NSLog (@"It's a leap year.");
        else
            NSLog (@"Nope, it's not a leap year.");
        
        //6.6
        int sign;
        NSLog (@"Please type in a number: ");
        //scanf ("%i", &number);
        number = 123;
        if ( number < 0 )
            sign = -1;
        else if ( number == 0 )
            sign = 0;
        else // Must be positive
            sign = 1;
        NSLog (@"Sign = %i", sign);
        
        //6.7
        char c;
        NSLog (@"Enter a single character:");
        //scanf (" %c", &c);
        /*As shown in the program example, it’s best to put a space before the %c in the scanf format string (as in " %c"). This causes scanf to “skip” over any so-called whitespace characters (for example, newlines, returns, tabs, line feeds) in the input. Omitting that space can cause scanf to read in a character that you don’t expect.*/
        /*Note that even though scanf is used here to read just a single character, you still must press the Return key after the character is typed to send the input to the program. In general, when- ever you’re reading data from the terminal, the program doesn’t see any of the data typed on the line until the Return key is pressed.*/
        c='p';
        if ( (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
            NSLog (@"It's an alphabetic character.");
        else if ( c >= '0' && c <= '9' )
            NSLog (@"It's a digit.");
        else
            NSLog (@"It's a special character.");
        
        //6.8 and 6.8A
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog (@"Type in your expression.");
        //scanf ("%lf %c %lf", &value1, &operator, &value2);
        value1 = 15; operator = '*'; value2 = 34;
        //A double value can be read in with the %lf format characters.
        /*The blank spaces inside the format string indicate that an arbitrary number of blank spaces are to be permitted on the input. This enables you to separate the operands from the operator with blank spaces when you type in these values.*/
        [deskCalc setAccumulator: value1];
        /*if ( operator == '+' )
            [deskCalc add: value2];
        else if ( operator == '-' )
            [deskCalc subtract: value2];
        else if ( operator == '*' )
            [deskCalc multiply: value2];
        else if ( operator == '/' )
            [deskCalc divide: value2];
            //if ( value2 == 0 )
                //NSLog (@"Division by zero.");
            //else
                //[deskCalc divide: value2];
        else
            NSLog (@"Unknown operator.");*/
        //6.9
        BOOL print = YES;
        switch ( operator )
        {
            case '+':
                [deskCalc add: value2];
                break;
            case '-':
                [deskCalc subtract: value2];
                break;
            case '*':
                [deskCalc multiply: value2];
                break;
            case '/':
                [deskCalc divide: value2];
                if ( value2 == 0 )
                {
                    print = NO;
                }
                break;
            default:
                NSLog (@"Unknown operator.");
                print = NO;
                break;
        }
        if(print)
            NSLog (@"%.2f", [deskCalc accumulator]);
        
        //6.10
        int p, d, isPrime;
        for ( p = 2; p <= 50; ++p )
        {
            isPrime = 1;
            for ( d = 2; d < p; ++d )
                if ( p % d == 0 )
                    isPrime = 0;
            if ( isPrime != 0 )
                NSLog (@"%i ", p);
        }
        
        //6.10A
        BOOL isPrime2;
        for ( p = 2; p <= 50; ++p )
        {
            isPrime2 = YES;
            for ( d = 2; d < p; ++d )
                if ( p % d == 0 )
                    isPrime2 = NO;
            if ( isPrime2 == YES )
                NSLog (@"%i ", p);
        }
        
        //Exercises
        //1.
        int val1, val2;
        NSLog(@"Enter two numbers");
        //scanf("%i %i", &val1, &val2);
        val1 = 256; val2 = 4;
        if(val1%val2==0)
        {
            NSLog(@"%i is evenly divisible by %i", val1, val2);
        }
        else
        {
            NSLog(@"%i is not evenly divisible by %i", val1, val2);
        }
        
        //4
        BOOL end=NO;
        print = YES;
        [deskCalc setAccumulator:0];
        while (!end)
        {
            NSLog(@"Enter number and operator");
            //scanf("%lf %c",&value1,&operator);
            value1 = 8; operator = 'E';
            switch ( operator )
            {
                case 'S':
                    [deskCalc setAccumulator:value1];
                    break;
                case 'E':
                    end = YES;
                    break;
                case '+':
                    [deskCalc add: value1];
                    break;
                case '-':
                    [deskCalc subtract: value1];
                    break;
                case '*':
                    [deskCalc multiply: value1];
                    break;
                case '/':
                    [deskCalc divide: value1];
                    if ( value2 == 0 )
                    {
                        print = NO;
                    }
                    break;
                default:
                    NSLog (@"Unknown operator.");
                    print = NO;
                    break;
            }
            if(print)
                NSLog (@"%.2f", [deskCalc accumulator]);
        }
        
        //5
        int right_digit;
        NSLog (@"Enter your number.");
        //scanf ("%i", &number);
        number = -8645;
        BOOL negative = NO;
        if (number < 0) {
            number *= -1;
            negative = YES;
        }
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        if(negative)
        {
            NSLog(@"-");
        }
        
        //6
        NSLog (@"Enter your number.");
        //scanf ("%i", &number);
        number = 932;
        int left_digit;
        do {
            left_digit = number / 100;
            NSLog(@"%i",left_digit);
            if (left_digit ==9)
            {
                number /=100;
                NSLog(@"%i",number);
                break;
            }
            /*switch (right_digit) {
                case 0:
                    NSLog(@"zero");
                    break;
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                default:
                    break;
            }*/
            //number /= 100;
        }
        while ( number != 9 );
    }
    return 0;
}
