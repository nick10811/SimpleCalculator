//
//  CalculatorBrain.h
//  SimpleCalculator
//
//  Created by Nick on 13/6/15.
//  Copyright (c) 2013年 Nick. All rights reserved.
//
/* Model for MVC */

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    double operand;
    
    //like stack
    double waitingOperand;
    NSString * waitingOperation;
}

-(void)setOperand:(double)anOperand;
-(double)performOperation:(NSString*)operation;

@end
