//
//  ScoreKeeper.m
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(NSString*) showScore{
    
    NSInteger percent = _right * 100/(_right + _wrong);
    return  [[NSString alloc]initWithFormat: @"score: %lu right, %lu wrong ----- %lu%%", _right, _wrong, percent];
};
@end
