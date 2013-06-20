//
//  BNRQuizViewController.h
//  BNRQuiz
//
//  Created by Tom Burns on 6/20/13.
//  Copyright (c) 2013 Tom Burns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRQuizViewController : UIViewController
{
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    int currentQuestionIndex;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
