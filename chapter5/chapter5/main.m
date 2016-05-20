//
//  main.m
//  chapter5
//
//  Created by Vishal Bhatnagar on 10/30/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //5.1
        int triangularNumber;
        triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        NSLog (@"The eighth triangular number is %i", triangularNumber);
        
        //5.2
        int n;
        triangularNumber = 0;
        for ( n = 1; n <= 200; n = n + 1 )
            triangularNumber += n;
        NSLog (@"The 200th triangular number is %i", triangularNumber);
        
        //5.3
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        triangularNumber = 0;
        for ( n = 1; n <= 10; ++n ) {
            triangularNumber += n;
            //NSLog (@" %i          %i", n, triangularNumber);  //5.3
            //NSLog (@"%2i %i", n, triangularNumber); //5.3A
            NSLog (@"%-2i %i", n, triangularNumber); //Exercise 4
        }
        
        //5.4
        int number;
        NSLog (@"What triangular number do you want?");
        //scanf ("%i", &number); //Rather than supplying the value of the variable number, we instead specify where we want the value that is entered to be stored. Reason for the ampersand (&).
        number = 5;
        triangularNumber = 0;
        
        for ( n = 1; n <= number; ++n )
            triangularNumber += n;
        
        NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
        
        //5.5
        int counter;
        for ( counter = 1; counter <= 5; ++counter )
        {
            NSLog (@"What triangular number do you want?");
            //scanf ("%i", &number);
            number = 100;
            
            triangularNumber = 0;
            
            for ( n = 1; n <= number; ++n )
                triangularNumber += n;
            
            NSLog (@"Triangular number %i is %i", number, triangularNumber);
        }
        
        //5.6
        int count = 1;
        while ( count <= 5 )
        {
            NSLog (@"%i", count);
            ++count;
        }
        
        /*
         For loop to while loop
         
         for ( init_expression; loop_condition; loop_expression ) program statement
         
                                    translates to
         
         init_expression;
         while ( loop_condition ) {
         program statement loop_expression;
         }
         */
        
        /*In general, a loop executed a predetermined number of times is a prime candidate for implementation as a for statement. Also, if the initial expression, looping expression, and looping condition all involve the same variable, the for statement is probably the right choice.*/
        
        //5.7
        unsigned int u, v, temp;
        
        NSLog (@"Please type in two nonnegative integers.");
        //scanf ("%u%u", &u, &v);
        u=5050;
        v=1000;
        while ( v != 0 ) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog (@"Their greatest common divisor is %u", u);
        
        //5.8
        int right_digit;
        NSLog (@"Enter your number.");
        //scanf ("%i", &number);
        number = 123456789;
        while ( number != 0 )
        {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        
        //5.9
        NSLog (@"Enter your number.");
        //scanf ("%i", &number);
        number = 0;
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        
        //Exercises
        //1.
        NSLog (@" n n^2");
        NSLog (@"-- ---");
        for(int n=1;n<=10;++n)
        {
            NSLog(@"%2i %i",n,n*n);
        }
        
        //2
        for(int n=5;n<=50;n+=5)
        {
            NSLog(@"%2i %i",n,((n+1)*n)/2);
        }
        
        //3
        int factorial=1;
        for(int i = 1; i <=10; i++)
        {
            factorial *= i;
            NSLog(@"%i", factorial);
        }
        
        //5
        int upperlimit;
        NSLog(@"Type in the number of triangular numbers to be calculated");
        //scanf("%i", &upperlimit);
        upperlimit = 5;
        for ( counter = 1; counter <= upperlimit; ++counter )
        {
            NSLog (@"What triangular number do you want?");
            //scanf ("%i", &number);
            number = 100;
            
            triangularNumber = 0;
            
            for ( n = 1; n <= number; ++n )
                triangularNumber += n;
            
            NSLog (@"Triangular number %i is %i", number, triangularNumber);
        }
        
        //6
        n=1;
        triangularNumber = 0;
        while(n<=200)
        {
            triangularNumber += n;
            ++n;
        }
        NSLog (@"The 200th triangular number is %i", triangularNumber);
        
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        triangularNumber = 0;
        n=1;
        while(n<=10)
        {
            triangularNumber += n;
            NSLog (@" %i          %i", n, triangularNumber);  //5.3
            //NSLog (@"%2i %i", n, triangularNumber); //5.3A
            //NSLog (@"%-2i %i", n, triangularNumber); //Exercise 4
            n++;
        }
        
        NSLog (@"What triangular number do you want?");
        number = 5;
        triangularNumber = 0;
        n=1;
        while (n <= number)
        {
            triangularNumber += n;
            ++n;
        }
        NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
        
        counter = 1;
        while (counter <= 5 )
        {
            NSLog (@"What triangular number do you want?");
            //scanf ("%i", &number);
            number = 100;
            
            triangularNumber = 0;
            n=1;
            while (n <= number)
            {
                triangularNumber += n;
                ++n;
            }
            NSLog (@"Triangular number %i is %i", number, triangularNumber);
            ++counter;
        }
        
        //7
        //all digits are negative.
        
        //8
        NSLog (@"Enter your number.");
        //scanf ("%i", &number);
        int sum=0;
        number = 2155;
        while ( number != 0 )
        {
            right_digit = number % 10;
            sum+=right_digit;
            //NSLog (@"%i", right_digit);
            number /= 10;
        }
        NSLog(@"The sum of the digits in 2155 is %i",sum);
    }
    return 0;
}
