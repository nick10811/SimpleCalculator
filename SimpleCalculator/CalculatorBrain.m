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

//current operand do operation with previous one
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

//perform operation and ouput result
-(double)performOperation:(NSString*)operation{
    [self performWatingOperation];
    waitingOperation = operation;
    waitingOperand = operand;
    
    return operand;
}

@end
