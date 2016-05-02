//
//  ViewController.m
//  In Our Prime
//
//  Created by Allen Spicer on 4/28/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    //view controller class doesn't have any definition of an instance of the brain. create pointer
    PrimeBrain * brainInstance;
}

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
-(IBAction)button:(UIButton *)sender;



@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create instance of primebrain for view controller to use
    brainInstance = [[PrimeBrain alloc]init];
    
    //determine if user input
    if (!(_textField==nil))

        {
        //convert string input from textField into number
           NSUInteger textFieldNumber = [_textField.text integerValue];
            
        //place input from textField in method primeTest
        if([brainInstance primeTest:textFieldNumber])
               {
                   
                //if yes from primeTest, fill in label with user feedback
                _label.text = @"Prime!";
                }else{
                    
                //if no from primeTest, fill in label with user feedback
                _label.text = @"Not Prime!";
                }
        }
}

- (void)didReceiveMemoryWarning
{[super didReceiveMemoryWarning];}



@end
