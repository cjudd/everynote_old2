//
//  JSENNotesListViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSENNotesListViewController.h"

@interface JSENNotesListViewController () {
    NSMutableArray *notes;
}

@end

@implementation JSENNotesListViewController

-(void) savedNote:(JSENAddNoteViewController*) controller {
    [notes addObject: controller.titleTextField.text];
    [[self tableView] reloadData];
    [controller.navigationController popToRootViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"Add Note Seque"]) {
        JSENAddNoteViewController *addNoteVC = segue.destinationViewController;
        addNoteVC.delegate = self;
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    notes = [NSMutableArray arrayWithObjects:@"Note 1", @"Note 2", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [notes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Note Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.textLabel.text = [notes objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
