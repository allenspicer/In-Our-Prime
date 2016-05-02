//
//  PrimeBrain.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "PrimeBrain.h"



@implementation PrimeBrain

number =


//NSUInteger number;
//NSUInteger cycle = 2;

-(BOOL) primeTest
{
    if(self.number<2)
        return NO;
        NSLog(@"Not Prime");
    for(NSUInteger cycle=2;
        cycle<self.number;
        cycle++)
    {
        //A number "number" is divisible by another number "cycle"
        //if the rest of the division of number divided i equals to zero
        if(self.number%cycle==0)
            return NO;
    NSLog(@"Not Prime");
    }
    //If no exist a number between 2 and number-1 that divides number
    return YES;
    NSLog(@"Prime!");
    
    
}


//-(NSMutableArray) primeFactorArray {
//
//
//    
//}




//NSUInteger * number = 0;
//
//
//-(BOOL)primeTest(NSUInteger PrimeBrain){
//
//    if(1%number == 0
//
//
//       ){
//       //NSUInteger is prime
//        return YES;
//        NSLog(@"Prime");
//    }else{
//        //not prime
//        return NO;
//        NSLog(@"Not Prime");}
//}




//-(void)primeTestDelegate
//{
//    // send message the message to the delegate
//    [_delegate primeTest:self];
//    
//    
//}
//
//-(void)dealloc
//{
//    // set the delegate to nil
//    _delegate = nil;
//}



@end
