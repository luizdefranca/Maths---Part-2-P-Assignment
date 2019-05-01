//
//  QuestionFactory.m
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
-(Question *) generateRandomQuestion{
    NSArray *questionSubclassNames = @[@"AdditionQuestion",
                                       @"SubstractionQuestion",
                                       @"DivisionQuestion",
                                       @"MultiplicationQuestion"];
    NSUInteger randomType = arc4random_uniform(3);
    
    NSString *subclassName = questionSubclassNames[randomType];
    return [[NSClassFromString(subclassName) alloc]init];
}
@end
