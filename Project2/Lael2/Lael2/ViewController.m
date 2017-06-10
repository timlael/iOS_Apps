//
//  ViewController.m
//  Lael2
//
//  Created by Tim Lael on 6/30/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.replaceFortune.delegate = self;
    
    self.fortunes = [NSMutableArray arrayWithObjects: @"You will soon see your second fortune",
                   @"You will soon see your third fortune",
                   @"You will soon see your fourth fortune",
                   @"You will soon see your fifth fortune",
                   @"You will soon see your sixth fortune",
                   @"You will soon see your seventh fortune",
                   @"You will soon see your eighth fortune",
                   @"You will soon see your ninth fortune",
                   @"Back to the top", nil];
    self.fortuneValue.text = self.fortunes[self.i];
}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.replaceFortune resignFirstResponder];
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

- (IBAction)randomPressed:(id)sender {
    int j = arc4random_uniform((int)[self.fortunes count]);
    self.fortuneValue.text = [self.fortunes objectAtIndex: j];
    self.i = j;
}
- (IBAction)nextPressed:(id)sender {
    if (self.i < self.fortunes.count-1){
        self.i++;
        self.fortuneValue.text = [self.fortunes objectAtIndex: self.i];
    }
    else{
        self.fortuneValue.text = [self.fortunes objectAtIndex: 0];
        self.i=0;
    }
}
- (IBAction)greenPressed:(id)sender {
    self.fortuneValue.textColor = [UIColor greenColor];
}

- (IBAction)redPressed:(id)sender {
    self.fortuneValue.textColor = [UIColor redColor];
}

- (IBAction)bluePressed:(id)sender {
    self.fortuneValue.textColor = [UIColor blueColor];
}

- (IBAction)changeFortune:(id)sender {
    [self.fortunes replaceObjectAtIndex:self.i withObject:self.replaceFortune.text];
    self.fortuneValue.text = self.replaceFortune.text;
    self.replaceFortune.text = @"Replace a Fortune";
}
@end
