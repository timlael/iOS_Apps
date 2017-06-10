//
//  ViewController.h
//  Lael2
//
//  Created by Tim Lael on 6/30/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *fortuneValue;
@property (weak, nonatomic) IBOutlet UITextField *replaceFortune;
@property int i;
@property NSMutableArray *fortunes;


- (IBAction)randomPressed:(id)sender;
- (IBAction)nextPressed:(id)sender;
- (IBAction)greenPressed:(id)sender;
- (IBAction)redPressed:(id)sender;
- (IBAction)bluePressed:(id)sender;
- (IBAction)changeFortune:(id)sender;


@end

