//
//  PrimeBrain.h
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import <Foundation/Foundation.h>


// declare the class
@class PrimeBrainClass;

// define the protocol for the delegate
@protocol PrimeBrainDelegate

// define protocol functions that can be used in any class using this delegate
-(void)primeTest:(PrimeBrainClass *)primeBrain;

@end


@interface PrimeBrain : NSObject

// define delegate property
@property (nonatomic, assign) id  delegate;

// define public functions
-(void)primeTestDelegate;

@end

