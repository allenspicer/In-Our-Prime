//
//  PrimeBrain.h
//  In Our Prime
//
//  Created by Allen Spicer on 4/30/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PrimeBrain : NSObject

@property(nonatomic) NSUInteger *number;
@property(strong, nonatomic) NSMutableArray *primeFactorArray;


-(BOOL) primeTest:(NSUInteger)number;
-(NSMutableArray*) primeFactorTest: (NSUInteger)number;

@end



