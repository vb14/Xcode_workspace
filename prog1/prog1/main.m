//
//  main.m
//  prog1
//
//  Created by Vishal Bhatnagar on 10/25/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //2.1 - 2.2
        NSLog(@"Programming is fun!");
        NSLog(@"And programming in Objective-C is even more fun!\n\n");
        
        //2.3
        NSLog (@"Testing...\n..1\n...2\n....3\n\n");
        
        //2.4
        int sum;
        sum = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i\n\n", sum);
        
        //2.5
        int value1, value2;
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog (@"The sum of %i and %i is %i\n\n", value1, value2, sum);
        
        //Exercises
        
        //1
        /*Type in and run the five programs presented in this chapter. Compare the output produced by each program with the output presented after each program.*/
        
        //2
        NSLog(@"\nIn Objective-C, lowercase letters are significant.\nmain is where program execution begins.\nOpen and closed braces enclose program statements in a routine.\nAll program statements must be terminated by a semicolon.\n\n");
        
        //3
        int i;
        i = 1;
        NSLog (@"Testing...");
        NSLog (@"....%i", i);
        NSLog (@"...%i", i + 1);
        NSLog (@"..%i\n\n", i + 2);
        
        //4
        int diff;
        value1 = 87;
        value2 = 15;
        diff = value1 - value2;
        NSLog(@"The difference of %i and %i is %i\n\n", value1, value2, diff);
        
        //5 find the problems
        /*#import <Foundation/Foundation.h>
         int main (int argc, const char *argv[]); (
         @autoreleasepool { INT sum;
         /* COMPUTE RESULT //
         sum = 25 + 37 - 19
         / DISPLAY RESULTS /
         NSLog (@'The answer is %i' sum);
         }
         return 0; }*/
        
        //6
        int answer, result;
        answer = 100;
        result = answer - 10;
        NSLog (@"The result is %i\n", result + 5);
    }
    return 0;
}
