//
//  ViewController.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/28/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@class PrimeBrain: NSObject;


-(BOOL)primeTest;


PrimeBrain * primeTest = primeBrain alloc]init];




@end

@implementation ViewController






- (void)viewDidLoad {
    [super viewDidLoad];

   // [_textField primeTest]
    
    if (!(_textField==nil))
    
    {if([primeTest textField.text]){
        _label.text = @"Prime!";
    }else{ _label.text = @"Not Prime!";
        
        
    }

- (void)didReceiveMemoryWarning
{[super didReceiveMemoryWarning];}



@end
