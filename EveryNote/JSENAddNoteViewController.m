//
//  JSENAddNoteViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSENAddNoteViewController.h"

@interface JSENAddNoteViewController ()

@end

@implementation JSENAddNoteViewController

@synthesize delegate;
@synthesize titleTextField;

- (IBAction)save:(id)sender {
    [self.delegate savedNote:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [self setTitleTextField:nil];
    [super viewDidUnload];
}

@end
