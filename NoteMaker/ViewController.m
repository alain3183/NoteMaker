//
//  ViewController.m
//  NoteMaker
//
//  Created by Alain Malenfant on 11/9/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UITextView *notebookTextView;
- (IBAction)doneButtonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.notebookCover = @"NoteMaker Cover Sheet";
    self.doneButton.hidden = YES;
    self.notebookTextView.text = self.notebookCover;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonAction:(id)sender {
    [self.notebookTextView resignFirstResponder];
    self.doneButton.hidden = YES;
}
@end
