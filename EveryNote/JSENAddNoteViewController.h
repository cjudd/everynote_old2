//
//  JSENAddNoteViewController.h
//  EveryNote
//
//  Created by Christopher Judd on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSENAddNoteViewController;

@protocol AddNoteDelegate

-(void) savedNote:(JSENAddNoteViewController*) controller;

@end

@interface JSENAddNoteViewController : UITableViewController

@property (nonatomic, weak) id <AddNoteDelegate> delegate;

@end
