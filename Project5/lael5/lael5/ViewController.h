//
//  ViewController.h
//  lael5
//
//  Created by Tim Lael on 7/31/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Friend.h"
#import "AddressBook.h"
#import "MapViewController.h"



@interface ViewController : UIViewController
{
@public
    AddressBook *myBook;
}

@property (weak, nonatomic) IBOutlet UITextField *fnameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *lnameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *addressOutlet;
@property int i;
@property (weak, nonatomic) IBOutlet UILabel *cardField;
@property UITableViewCell *cell;
@property NSMutableArray *passAddresses;
@property NSMutableArray *nameCheck;
@property NSMutableArray *fullCheck;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *delButton;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;



- (IBAction)add:(id)sender;
- (IBAction)update:(id)sender;
- (IBAction)next:(id)sender;
- (IBAction)del:(id)sender;


@end

