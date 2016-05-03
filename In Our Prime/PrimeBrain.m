//
//  PrimeBrain.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "PrimeBrain.h"



@implementation PrimeBrain{

    PrimeBrain *brainInstance;
    
}


-(BOOL) primeTest:(NSUInteger)number
{
    //display array
    NSLog(@"%@", _primeFactorArray);
    
    //define all numbers below 2 as not prime
    if(number < 2){
        NSLog(@"Not Prime");
        return NO;}

    NSUInteger cycle = 2;
    
    //while loop
    while (cycle < number)
    {
            //if there is any perfecly divisible number return no
            if(number % cycle == 0){
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



-(NSMutableArray*) primeFactorArray: (NSUInteger)number
{
    //create brain instance to apply primetest method for array input
    brainInstance = [[PrimeBrain alloc]init];
   
    //initalize factor variable
    NSUInteger factor = number-1;
    
    //initialize the array
    NSMutableArray *primeFactorArray = [[NSMutableArray alloc]init];
    
    do {
        
        //when variable "factor" is prime and divides evenly into the number...
        if (([brainInstance primeTest:factor]) && (number % factor == 0))
                {
                    //...add it to the array
                    //[primeFactorArray addObject:[NSNumber factor.value]];
                    [primeFactorArray addObject:@(factor)];
                }
        
        //increment factor
        factor ++;}
        
        //until factor reaches zero
        while (factor > 0);

    //return output
    return _primeFactorArray;
    
}


@end
