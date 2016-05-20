//
//  main.m
//  chapter8
//
//  Created by Vishal Bhatnagar on 11/10/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        [b initVar];    // will use inherited method
        [b printVar];    // reveal value of x;
    }
    return 0;
}
