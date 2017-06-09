//
//  ViewController.m
//  lael5
//
//  Created by Tim Lael on 7/31/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@end

@implementation ViewController
@synthesize i, cell, passAddresses, nameCheck, fullCheck, tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    i=0;
/*  Disable appropriate buttons for startup */
    self.delButton.enabled = NO;
    self.updateButton.enabled = NO;
/* Set up text field delegates              */
    self.fnameOutlet.delegate = self;
    self.lnameOutlet.delegate = self;
    self.addressOutlet.delegate = self;

/*  Create Address Book                     */
    [AddressBook new];
    
/*  Create Friends and place in AddressBook */
    Friend *f1 = [[Friend alloc] initWithFirstName:@"Ted" andLastName:@"Drewe" andAddress:@"6276 Chippewa, St. Louis, MO 63109"];

    myBook = [[AddressBook alloc] init];
    [myBook.book addObject:f1];
	
    Friend *f2 = [[Friend alloc] initWithFirstName:@"Fred" andLastName:@"Bird" andAddress:@"700 Clark Ave., St. Louis, MO 63102"];

    [myBook.book addObject:f2];
    
    Friend *f3 = [[Friend alloc] initWithFirstName:@"Tom" andLastName:@"Schlafly" andAddress:@"2100 Locust St., St. Louis, MO 63103"];

    [myBook.book addObject:f3];
    
    Friend *f4 = [[Friend alloc] initWithFirstName:@"Sean" andLastName:@"Sweeney" andAddress:@"45 Progress Pkwy., Maryland Heights, MO 63043"];
    
    [myBook.book addObject:f4];
    
/* Create arrays to be used for integrity checks later   */
    nameCheck = [NSMutableArray array];
    fullCheck = [NSMutableArray array];
    for(int k=0; k < [myBook.book count]; k++){
        [nameCheck addObject:[myBook.book[k] getName]];
}
    for (int l=0; l < [myBook.book count]; l++){
        NSString *checkstring = [[[myBook.book[l] getName] stringByAppendingString: @" "] stringByAppendingString:(NSString *)[myBook.book[l] address]];
        [fullCheck addObject:checkstring];
    }

/*  Create array to hold friends to be passed to Second View    */
    passAddresses = [NSMutableArray array];

}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.fnameOutlet resignFirstResponder];
    [self.lnameOutlet resignFirstResponder];
    [self.addressOutlet resignFirstResponder];
}
- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    if(textField){
        [textField resignFirstResponder];
    }
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return (NSInteger) [myBook.book count];
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *myTableID = @"myTableId";
    cell = [tableView dequeueReusableCellWithIdentifier: myTableID];
    if (cell == nil)
        cell=[[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: myTableID];
    cell.textLabel.text = [myBook.book[indexPath.row] getName];
    return cell;
}

/*  Select/Deselect Friends to be passed to map view */
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    cell = [tableView cellForRowAtIndexPath: indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryNone){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        [passAddresses addObject: myBook.book[(int)indexPath.row]];
    }
    else{
        cell.accessoryType = UITableViewCellAccessoryNone;
        [passAddresses removeLastObject];
    }
        
}

/*  Create new friends and refresh UITableView  */
- (IBAction)add:(id)sender {
    self.cardField.text = nil;
    Friend *temp = [[Friend alloc] initWithFirstName: self.fnameOutlet.text andLastName: self.lnameOutlet.text andAddress: self.addressOutlet.text];
    BOOL isTheObjectThere = [nameCheck containsObject: [[temp.firstName stringByAppendingString:@" "] stringByAppendingString: temp.lastName]];
    if (isTheObjectThere)
        self.cardField.text = @"Duplicate Entry, Not Added";
    else{
        self.addButton.enabled = NO;
        self.cardField.text = @"Added";
        self.fnameOutlet.text = nil;
        self.lnameOutlet.text = nil;
        self.addressOutlet.text = nil;
        [myBook.book addObject:temp];
        [tableView reloadData];
    }

}

/*  Update existing friends and refresh UITableView */
- (IBAction)update:(id)sender {
    self.cardField.text = nil;
    Friend *temp = [[Friend alloc] initWithFirstName: self.fnameOutlet.text andLastName: self.lnameOutlet.text andAddress: self.addressOutlet.text];
    BOOL isTheObjectThere = [fullCheck containsObject: (NSString *)[[[[temp.firstName stringByAppendingString:@" "]stringByAppendingString: temp.lastName] stringByAppendingString: @" "]stringByAppendingString: temp.address]];

    if (isTheObjectThere){
        self.cardField.text = @"Duplicate Entry, Not Added";
    }
    else {
        if([myBook.book count] > 0 && i!=0){
            [myBook.book replaceObjectAtIndex: i-1 withObject: temp];
            self.cardField.text = @"Updated";
            [tableView reloadData];
        }
        else{
            [myBook.book replaceObjectAtIndex: [myBook.book count] -1 withObject: temp];
            self.cardField.text = @"Updated";
            [tableView reloadData];
        }
    }
}

/*  Cycle through friends for editing   */
- (IBAction)next:(id)sender {
    if ([myBook.book count] == 1){
        
    }
    else if([myBook.book count] > 0){
        self.cardField.text = nil;
        self.addButton.enabled = YES;
        self.delButton.enabled = YES;
        self.updateButton.enabled = YES;
        self.fnameOutlet.text = [myBook.book[i] firstName];
        self.lnameOutlet.text = [myBook.book[i] lastName];
        self.addressOutlet.text = (NSString *)[myBook.book[i] address];
        i++;
        i = i % [myBook.book count];

}
    else
        self.cardField.text = @"Empty Address Book";
}

/*  Delete Friend   */
- (IBAction)del:(id)sender {
    self.cardField.text = nil;
    self.delButton.enabled = NO;
    self.updateButton.enabled = NO;
    if([myBook.book count] > 0 && i!=0){
        self.fnameOutlet.text = nil;
        self.lnameOutlet.text = nil;
        self.addressOutlet.text = nil;
        [myBook.book removeObjectAtIndex:(i-1)];
        [tableView reloadData];
        i=0;
    }
    else{
        self.fnameOutlet.text = nil;
        self.lnameOutlet.text = nil;
        self.addressOutlet.text = nil;
        [myBook.book removeObjectAtIndex:([myBook.book count]-1)];
        [tableView reloadData];
    }
}

/*  Copy and pass selected friends to map view  */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"MapViewController"]){
        MapViewController *controller = segue.destinationViewController;
        controller.mapFriends = [passAddresses copy];
    }
}

@end
