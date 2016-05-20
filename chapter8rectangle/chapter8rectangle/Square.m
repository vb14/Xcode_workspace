//
//  Square.m
//  chapter8rectangle
//
//  Created by Vishal Bhatnagar on 11/11/15.
//  Copyright © 2015 Vishal Bhatnagar. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}
-(int) side
{
    return [self width];
}
@end
