//
//  BNRQuizViewController.m
//  BNRQuiz
//
//  Created by Tom Burns on 6/20/13.
//  Copyright (c) 2013 Tom Burns. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@end

@implementation BNRQuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    currentQuestionIndex = 0;
    
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];

    [questions addObject:@"What is 7 + 7?"];
    [answers addObject:@"14"];
    
    [questions addObject:@"What is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
    
    [questions addObject:@"From what is cognac made?"];
    [answers addObject:@"Grapes"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex += 1;
    
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
    
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    [answerField setText:answer];
}

@end
