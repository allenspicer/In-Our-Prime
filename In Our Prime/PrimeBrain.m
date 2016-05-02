//
//  PrimeBrain.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "PrimeBrain.h"



@implementation PrimeBrain


_number = 5;



-(BOOL) primeTest
{
    //remove all below 2
    if(_number<2){
        NSLog(@"Not Prime");
        return NO;}

    NSUInteger cycle=2;
    
    //while loop
    while (cycle<_number)
    {
            //if there is any perfecly divisible number return no
            if(_number%cycle==0){
                NSLog(@"Not Prime");
                return NO;
            }
    //increment
    cycle++;
    }

//otherwise number has no divisors, return yes
NSLog(@"Prime!");
return YES;
}



//-(NSMutableArray) primeFactorArray {
//
//
//    
//}




@end
