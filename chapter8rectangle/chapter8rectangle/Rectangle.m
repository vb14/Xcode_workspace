//
//  Rectangle.m
//  chapter8rectangle
//
//  Created by Vishal Bhatnagar on 11/11/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
//    self.width=w;
//    self.height=h;
//    [self setWidth:w];
//    [self setHeight:h];
}

-(int) area
{
    return width * height;
}
-(int) perimeter
{
    return (width + height) * 2;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin:(XYPoint *)pt
{
    if(!origin)
    {
        origin = [[XYPoint alloc]init];
    }
    origin.x = pt.x; //8.5
    origin.y = pt.y; //8.5
//    origin = pt; //8.4
}
@end
