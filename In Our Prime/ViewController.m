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

@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

-(IBAction)checkIfPrime:(id)sender;



@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(IBAction)checkIfPrime:(id)sender{

    //create instance of primebrain for view controller to use
    brainInstance = [[PrimeBrain alloc]init];
    
    //determine if user input
    if (!([_textField.text isEqualToString:@""]))
    {
        //convert string input from textField into number
        NSUInteger textFieldNumber = [_textField.text integerValue];
        
        //place input from textField in method primeTest
        if([brainInstance primeTest:textFieldNumber])
        {
            
            //if yes from primeTest, fill in label with user feedback
            _label.text = @"Yes!";
        }else{
            
            //if no from primeTest, fill in label with user feedback
            _label.text = @"Nope!";
        }
    }


}


-(IBAction)checkPrimeFactors:(id)sender{
    
        brainInstance = [[PrimeBrain alloc]init];
    
    NSUInteger textFieldNumber = [_textField.text integerValue];
    NSUInteger factor = textFieldNumber;
    NSMutableArray * mutableFactorArray = [[NSMutableArray alloc]init];
    
    ///create while loop
    while (factor>1){
        factor --;
        
    //cycle through all factors of textfieldnumber and send them to prime test as before
        if (textFieldNumber % factor == 0){
        
    //while in loop, if they are prime addobject to array
            if([brainInstance primeTest:factor]){
                
            //take number and make it into an object while adding object to array
                [mutableFactorArray addObject:@(factor)];
            }
        }
    
        //create string from array
        NSString *labelString = [[mutableFactorArray valueForKey:@"description"] componentsJoinedByString:@" & "];
        
        
        //display string in label
       _secondLabel.text = labelString;
    
    }
    
    if (([_secondLabel.text  isEqual: @""])){
               _secondLabel.text = @"No Prime Factors.";
    }
}

- (void)didReceiveMemoryWarning
{[super didReceiveMemoryWarning];}



@end
