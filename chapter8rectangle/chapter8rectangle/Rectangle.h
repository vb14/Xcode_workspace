//
//  Rectangle.h
//  chapter8rectangle
//
//  Created by Vishal Bhatnagar on 11/11/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h" //8.5
//@class XYPoint; //8.4

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
@end
