//
//  main.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Question.h"
#import "QuestionManager.h"
#import "ScoreKeeper.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        QuestionManager * questionManager = [[QuestionManager alloc] init];
        QuestionFactory * factory = [[QuestionFactory alloc] init];
        ScoreKeeper * score = [[ScoreKeeper alloc] init];
        
        BOOL gameON = YES;
        
        NSLog(@"MATHS!\n\n\n");
        
        while (gameON) {
            
            Question *question = [factory generateRandomQuestion]  ;
            [[questionManager questions] addObject:question];

            NSLog(@"%@", [question question]);
            NSString *inputString = [InputHandler stringFromInput];
            
            if([inputString isEqualToString: @"quit"]){
                gameON = NO;
            } else {
            
                NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                NSNumber *typedNumber = [formatter numberFromString:inputString];
                
                NSInteger number;
                if(typedNumber == nil){
                    NSLog(@"Wrong number. I cannot convert!");
                     continue;
                } else {
                    number = [typedNumber integerValue];
                    if(number == [question answer]){
                        ++score.right;
                        NSLog(@"%@", @"Right");
                        NSLog(@"%@", [score showScore]);
                        NSLog(@"%@", [questionManager timeOutput]);
                    } else {
                        ++score.wrong;
                        NSLog(@"%@", @"Wrong");
                         NSLog(@"%@", [score showScore]);
                         NSLog(@"%@", [questionManager timeOutput]);
                    }
                }
            }
        }
        NSLog(@"%@", @"Bye");
    }
    return 0;
}
