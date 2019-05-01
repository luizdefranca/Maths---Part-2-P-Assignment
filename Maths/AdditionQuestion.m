//
//  AdditionQuestion.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftSide = 10 + arc4random_uniform((uint32_t)(100 - 10 + 1));
        _rightSide = 10 + arc4random_uniform((uint32_t)(100 - 10 + 1));;
        _answer = _leftSide + _rightSide;
        _question =  [[NSString alloc] initWithFormat: @"%lu + %lu = ?", _leftSide, _rightSide];

    }
    return self;
}
@end
