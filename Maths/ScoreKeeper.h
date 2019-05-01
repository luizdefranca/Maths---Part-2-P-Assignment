//
//  ScoreKeeper.h
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;
-(NSString*) showScore;
@end

NS_ASSUME_NONNULL_END
