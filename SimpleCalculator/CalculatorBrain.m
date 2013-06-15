//
//  CalculatorBrain.m
//  SimpleCalculator
//
//  Created by Nick on 13/6/15.
//  Copyright (c) 2013年 Nick. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(void)setOperand:(double)anOperand{
    operand = anOperand;
}

-(void)performWatingOperation{
    if ([@"+" isEqual:waitingOperation]){
        operand = waitingOperand + operand;
    }
    else if ([@"-" isEqual:waitingOperation]){
        operand = waitingOperand - operand;
    }
    else if ([@"*" isEqual:waitingOperation]){
        operand = waitingOperand * operand;
    }
    else if ([@"/" isEqual:waitingOperation]){
        operand = waitingOperand / operand;
    }
}

-(double)performOperation:(NSString*)operation{
    [self performWatingOperation];
    waitingOperation = operation;
    waitingOperand = operand;
    
    return operand;
}

@end
