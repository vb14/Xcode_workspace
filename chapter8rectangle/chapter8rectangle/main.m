//
//  main.m
//  chapter8rectangle
//
//  Created by Vishal Bhatnagar on 11/11/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //8.2
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth: 5 andHeight: 8];
        NSLog (@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog (@"Area = %i, Perimeter = %i", [myRect area],[myRect perimeter]);
        
        //8.3
        Square *mySquare = [[Square alloc] init];
        [mySquare setSide: 5];
        NSLog (@"Square s = %i", [mySquare side]);
        NSLog (@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
        
        //8.4
        myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
        
        //8.5
        myRect = [[Rectangle alloc]init];
        myPoint = [[XYPoint alloc]init];
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        [myPoint setX:50 andY:50];
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
