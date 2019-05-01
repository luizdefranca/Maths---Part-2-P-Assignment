//
//  AdditionQuestion.h
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

-(instancetype) init;
@property (readonly)NSInteger leftSide;
@property (readonly) NSInteger rightSide;
@property  (nonatomic) NSInteger answer;
@property (readonly) NSString * question;
@property NSDate * startTime;
@property NSDate * endTime;
- (NSTimeInterval) timeDiference;

@end

NS_ASSUME_NONNULL_END
