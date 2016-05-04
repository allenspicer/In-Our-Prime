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
    
    //define all numbers below 2 as not prime
    if(number < 2){
        return NO;}

    NSUInteger cycle = 2;
    
    //while loop
    while (cycle < number)
    {
            //if there is any perfecly divisible number return no
            if(number % cycle == 0){
                return NO;
            }
    //increment
    cycle++;
    }

//otherwise number has no divisors, return yes

return YES;
}



-(NSMutableArray*) primeFactorTest: (NSUInteger)number
{
    //create brain instance to apply primetest method for array input
    brainInstance = [[PrimeBrain alloc]init];
   
    //initalize factor variable
    NSUInteger factor = number;
    
    //initialize the array
    NSMutableArray *primeFactorArray = [[NSMutableArray alloc]init];
    
    //for all factors from number to zero
    while (factor > 0){
        
        //decrement factor
        factor --;
        
        //when variable "factor" is prime...
        if (([brainInstance primeTest:factor])&&(number % factor == 0))
                {
                    //...add it to the array
                    //[primeFactorArray addObject:[NSNumber factor.value]];
                    [primeFactorArray addObject:[NSNumber numberWithUnsignedInteger:factor]];
                }
    }

    //return output
    return _primeFactorArray;
    
    
}

@end
