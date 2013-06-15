//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Nick on 13/6/15.
//  Copyright (c) 2013年 Nick. All rights reserved.
//
/* Controller for MVC */

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController{
    CalculatorBrain* brain; //implement object of CalculatorBrain
    IBOutlet UILabel* display;
    
    BOOL userIsInTheMiddleOfTypingANumber;
}

-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@end
