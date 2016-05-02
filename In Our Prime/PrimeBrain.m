//
//  PrimeBrain.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "PrimeBrain.h"



@implementation PrimeBrain


-(BOOL) primeTest:(NSUInteger)number
{
    //define all numbers below 2 as not prime
    int intNumber = (int)_number;

    if(intNumber<2){
        NSLog(@"Not Prime");
        return NO;}

    NSUInteger cycle=2;
    int intCycle = (int)_cycle;
    
    //while loop
    while (cycle<intNumber)
    {
            //if there is any perfecly divisible number return no
            if(intNumber%intCycle==0){
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
