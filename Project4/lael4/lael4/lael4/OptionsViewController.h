//
//  OptionsViewController.h
//  lael4
//
//  Created by Tim Lael on 7/25/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwoSwitch.h"
#import "ThreeSwitch.h"
#import "FourSwitch.h"
#import "HighSwitch.h"

@interface OptionsViewController : UIViewController

@property TwoSwitch *sw2;
@property ThreeSwitch *sw3;
@property FourSwitch *sw4;
@property HighSwitch *swh;

@property (weak, nonatomic) IBOutlet UISwitch *pairOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *threeOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *fourOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *highOutlet;

- (IBAction)pair:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)high:(id)sender;

@end
