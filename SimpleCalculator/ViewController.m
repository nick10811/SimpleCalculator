//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Nick on 13/6/15.
//  Copyright (c) 2013年 Nick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//initial object
-(CalculatorBrain *)brain{
    if(!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

-(IBAction)digitPressed:(UIButton *)sender{
    NSString * digit = [[sender titleLabel] text]; //the operand which is user pressed
    NSString * count = display.text; //count digit
    if(userIsInTheMiddleOfTypingANumber){
        if ([count length]<10) { //limit in 10 digit
            [display setText:[[display text] stringByAppendingString:digit]];
        }
    }
    else{
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}

-(IBAction)operationPressed:(UIButton *)sender{
    
    if(userIsInTheMiddleOfTypingANumber){
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g",result]];
}

@end
