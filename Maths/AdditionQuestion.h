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
@property (readonly) NSInteger answer;
@property (readonly) NSString *question;
@end

NS_ASSUME_NONNULL_END
