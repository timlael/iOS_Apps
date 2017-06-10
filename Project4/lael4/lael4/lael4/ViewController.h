//
//  ViewController.h
//  lael4
//
//  Created by Tim Lael on 7/25/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSMutableArrayShuffling.h"
#import "TwoSwitch.h"
#import "ThreeSwitch.h"
#import "FourSwitch.h"
#import "HighSwitch.h"

@interface ViewController : UIViewController
@property TwoSwitch *sw2;
@property ThreeSwitch *sw3;
@property FourSwitch *sw4;
@property HighSwitch *swh;

- (IBAction)d1Press:(id)sender;
- (IBAction)d2Press:(id)sender;
- (IBAction)d3Press:(id)sender;
- (IBAction)d4Press:(id)sender;
- (IBAction)d5Press:(id)sender;
- (IBAction)p1Press:(id)sender;
- (IBAction)p2Press:(id)sender;
- (IBAction)p3Press:(id)sender;
- (IBAction)p4Press:(id)sender;
- (IBAction)p5Press:(id)sender;
- (IBAction)discard:(id)sender;
- (IBAction)reset:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *d1Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *d2Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *d3Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *d4Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *d5Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *p1Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *p2Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *p3Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *p4Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *p5Outlet;
@property (weak, nonatomic) IBOutlet UIImageView *deck;
@property (weak, nonatomic) IBOutlet UILabel *dealer;
@property (weak, nonatomic) IBOutlet UILabel *player;

- (void) initializeDeck;

@end

