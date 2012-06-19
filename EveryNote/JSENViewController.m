//
//  JSENViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSENViewController.h"

@interface JSENViewController ()

@property (weak, nonatomic) IBOutlet UITextField *urlField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation JSENViewController

@synthesize urlField;
@synthesize webView;

- (IBAction)browseTo:(id)sender {
    // hide keyboard
    [urlField resignFirstResponder];
    NSURL *url = [[NSURL alloc] initWithString:urlField.text];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
    [webView loadRequest:request];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUrlField:nil];
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
