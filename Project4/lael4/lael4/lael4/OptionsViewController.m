//
//  OptionsViewController.m
//  lael4
//
//  Created by Tim Lael on 7/25/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "OptionsViewController.h"
#import "ViewController.h"


@interface OptionsViewController ()

@end

@implementation OptionsViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ID1"]){
        ViewController *to = segue.destinationViewController;
        to.sw2 = self.sw2;
        to.sw3 = self.sw3;
        to.sw4 = self.sw4;
        to.swh = self.swh;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sw2 = [TwoSwitch new];
    self.sw3 = [ThreeSwitch new];
    self.sw4 = [FourSwitch new];
    self.swh = [HighSwitch new];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pair:(id)sender {
}

- (IBAction)three:(id)sender {
    [self.sw3 threeToggle];
}

- (IBAction)four:(id)sender {
    [self.sw4 fourToggle];
}

- (IBAction)high:(id)sender {
    [self.swh highToggle];
}
@end
