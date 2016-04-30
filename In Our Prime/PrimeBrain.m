//
//  PrimeBrain.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "PrimeBrain.h"



@implementation PrimeBrain

-(void)primeTestDelegate
{
    // send message the message to the delegate
    [_delegate primeTest:self];
    
    
}

-(void)dealloc
{
    // set the delegate to nil
    _delegate = nil;
}



@end
