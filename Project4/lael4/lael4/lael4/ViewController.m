//
//  ViewController.m
//  lael4
//
//  Created by Tim Lael on 7/25/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@property (strong, nonatomic) NSMutableArray *cards;
@property (strong, nonatomic) NSArray *back;

@end


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    [self initializeDeck];
    
    //Shuffle Deck
    [self.cards shuffle];


    //Initialize Back of Card Image
    self.back = @[@"back.png"];
    
    //Deal
    self.p1Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.d1Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.p2Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.d2Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.p3Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.d3Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.p4Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.d4Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.p5Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    self.d5Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)d1Press:(id)sender {
    if([self.d1Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.d1Outlet.image = self.cards[1];
    }
    else{
        self.d1Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}

- (IBAction)d2Press:(id)sender {
    if([self.d2Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.d2Outlet.image = self.cards[3];
    }
    else{
        self.d2Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)d3Press:(id)sender {
    if([self.d3Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.d3Outlet.image = self.cards[5];
    }
    else{
        self.d3Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)d4Press:(id)sender {
    if([self.d4Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.d4Outlet.image = self.cards[7];
    }
    else{
        self.d4Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)d5Press:(id)sender {
    if([self.d5Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.d5Outlet.image = self.cards[9];
    }
    else{
        self.d5Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}

- (IBAction)p1Press:(id)sender {
    if([self.p1Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.p1Outlet.image = self.cards[0];
    }
    else{
        self.p1Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)p2Press:(id)sender {
    if([self.p2Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.p2Outlet.image = self.cards[2];
    }
    else{
        self.p2Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)p3Press:(id)sender {
    if([self.p3Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.p3Outlet.image = self.cards[4];
    }
    else{
        self.p3Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)p4Press:(id)sender {
    if([self.p4Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.p4Outlet.image = self.cards[6];
    }
    else{
        self.p4Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)p5Press:(id)sender {
    if([self.p5Outlet.image isEqual:[UIImage imageNamed:@"back.png"]]){
        self.p5Outlet.image = self.cards[8];
    }
    else{
        self.p5Outlet.image = [UIImage imageNamed:@"back.png"];
    }
}
- (IBAction)reset:(id)sender {
    self.player.text = @"Player";
    self.dealer.text = @"Dealer";
    [self initializeDeck];
    [self.cards shuffle];
    int x = arc4random()%[self.cards count];
    self.p1Outlet.image = self.cards[x];
    self.p1Outlet.animationDuration = 1;
    self.p1Outlet.animationImages = self.cards;
    self.p1Outlet.animationRepeatCount = 1;
    self.p1Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.p1Outlet startAnimating];
    self.d1Outlet.image = self.cards[x];
    self.d1Outlet.animationDuration = 1;
    self.d1Outlet.animationImages = self.cards;
    self.d1Outlet.animationRepeatCount = 1;
    self.d1Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.d1Outlet startAnimating];
    self.p2Outlet.image = self.cards[x];
    self.p2Outlet.animationDuration = 1;
    self.p2Outlet.animationImages = self.cards;
    self.p2Outlet.animationRepeatCount = 1;
    self.p2Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.p2Outlet startAnimating];
    self.d2Outlet.image = self.cards[x];
    self.d2Outlet.animationDuration = 1;
    self.d2Outlet.animationImages = self.cards;
    self.d2Outlet.animationRepeatCount = 1;
    self.d2Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.d2Outlet startAnimating];
    self.p3Outlet.image = self.cards[x];
    self.p3Outlet.animationDuration = 1;
    self.p3Outlet.animationImages = self.cards;
    self.p3Outlet.animationRepeatCount = 1;
    self.p3Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.p3Outlet startAnimating];
    self.d3Outlet.image = self.cards[x];
    self.d3Outlet.animationDuration = 1;
    self.d3Outlet.animationImages = self.cards;
    self.d3Outlet.animationRepeatCount = 1;
    self.d3Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.d3Outlet startAnimating];
    self.p4Outlet.image = self.cards[x];
    self.p4Outlet.animationDuration = 1;
    self.p4Outlet.animationImages = self.cards;
    self.p4Outlet.animationRepeatCount = 1;
    self.p4Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.p4Outlet startAnimating];
    self.d4Outlet.image = self.cards[x];
    self.d4Outlet.animationDuration = 1;
    self.d4Outlet.animationImages = self.cards;
    self.d4Outlet.animationRepeatCount = 1;
    self.d4Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.d4Outlet startAnimating];
    self.p5Outlet.image = self.cards[x];
    self.p5Outlet.animationDuration = 1;
    self.p5Outlet.animationImages = self.cards;
    self.p5Outlet.animationRepeatCount = 1;
    self.p5Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.p5Outlet startAnimating];
    self.d5Outlet.image = self.cards[x];
    self.d5Outlet.animationDuration = 1;
    self.d5Outlet.animationImages = self.cards;
    self.d5Outlet.animationRepeatCount = 1;
    self.d5Outlet.image = [_cards lastObject];
    [_cards removeLastObject];
    [self.d5Outlet startAnimating];
}
- (void) initializeDeck{
    NSString *cardname;
    //Initialize Deck
    self.cards = [NSMutableArray new];
    for(int j=0; j<52; j++){
        cardname = [NSString stringWithFormat:@"%i.png", j+1];
        self.cards[j] = [UIImage imageNamed:cardname];
    }
}
- (IBAction)discard:(id)sender {
    BOOL ppair2 = NO;
    BOOL ppair3 = NO;
    BOOL ppair4 = NO;
    BOOL ppair5 = NO;
    BOOL ppair6 = NO;
    BOOL ppair7 = NO;
    BOOL ppair8 = NO;
    BOOL ppair9 = NO;
    BOOL ppairt = NO;
    BOOL ppairj = NO;
    BOOL ppairq = NO;
    BOOL ppairk= NO;
    BOOL ppaira = NO;
    BOOL pthree2 = NO;
    BOOL pthree3 = NO;
    BOOL pthree4 = NO;
    BOOL pthree5 = NO;
    BOOL pthree6 = NO;
    BOOL pthree7 = NO;
    BOOL pthree8 = NO;
    BOOL pthree9 = NO;
    BOOL pthreet = NO;
    BOOL pthreej = NO;
    BOOL pthreeq = NO;
    BOOL pthreek = NO;
    BOOL pthreea = NO;
    BOOL pfour2 = NO;
    BOOL pfour3 = NO;
    BOOL pfour4 = NO;
    BOOL pfour5= NO;
    BOOL pfour6 = NO;
    BOOL pfour7 = NO;
    BOOL pfour8 = NO;
    BOOL pfour9 = NO;
    BOOL pfourt = NO;
    BOOL pfourj = NO;
    BOOL pfourq = NO;
    BOOL pfourk = NO;
    BOOL pfoura = NO;
    BOOL dpair2 = NO;
    BOOL dpair3 = NO;
    BOOL dpair4 = NO;
    BOOL dpair5 = NO;
    BOOL dpair6 = NO;
    BOOL dpair7 = NO;
    BOOL dpair8 = NO;
    BOOL dpair9 = NO;
    BOOL dpairt = NO;
    BOOL dpairj = NO;
    BOOL dpairq = NO;
    BOOL dpairk= NO;
    BOOL dpaira = NO;
    BOOL dthree2 = NO;
    BOOL dthree3 = NO;
    BOOL dthree4 = NO;
    BOOL dthree5 = NO;
    BOOL dthree6 = NO;
    BOOL dthree7 = NO;
    BOOL dthree8 = NO;
    BOOL dthree9 = NO;
    BOOL dthreet = NO;
    BOOL dthreej = NO;
    BOOL dthreeq = NO;
    BOOL dthreek = NO;
    BOOL dthreea = NO;
    BOOL dfour2 = NO;
    BOOL dfour3 = NO;
    BOOL dfour4 = NO;
    BOOL dfour5= NO;
    BOOL dfour6 = NO;
    BOOL dfour7 = NO;
    BOOL dfour8 = NO;
    BOOL dfour9 = NO;
    BOOL dfourt = NO;
    BOOL dfourj = NO;
    BOOL dfourq = NO;
    BOOL dfourk = NO;
    BOOL dfoura = NO;
   //check for player has four aces
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
      (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
      (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
      (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
      (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
       ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
        [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
           pfoura = YES;
       }
    //check for player has four kings
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            pfourk = YES;
        }
    //check for player has four queens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            pfourq = YES;
        }
    //check for player has four jacks
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            pfourj = YES;
        }
    //check for player has four tens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            pfourt = YES;
        }
    //check for player has four nines
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            pfour9 = YES;
        }
    //check for player has four eights
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            pfour8 = YES;
        }
    //check for player has four sevens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            pfour7 = YES;
        }
    //check for player has four sixes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            pfour6 = YES;
        }
    //check for player has four fives
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            pfour5 = YES;
        }
    //check for player has four fours
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            pfour4 = YES;
        }
    //check for player has four threes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            pfour3 = YES;
        }
    //check for player has four twos
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            pfour2 = YES;
        }
    //check for player has three aces
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
            pthreea = YES;
        }
    //check for player has three kings
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            pthreek = YES;
        }
    //check for player has three queens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            pthreeq = YES;
        }
    //check for player has three jacks
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            pthreej = YES;
        }
    //check for player has three tens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            pthreet = YES;
        }
    //check for player has three nines
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            pthree9 = YES;
        }
    //check for player has three eights
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            pthree8 = YES;
        }
    //check for player has three sevens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            pthree7 = YES;
        }
    //check for player has three sixes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            pthree6 = YES;
        }
    //check for player has three fives
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            pthree5 = YES;
        }
    //check for player has three fours
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            pthree4 = YES;
        }
    //check for player has three threes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            pthree3 = YES;
        }
    //check for player has three twos
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            pthree2 = YES;
        }
    //check for player has two aces
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
            ppaira = YES;
        }
    //check for player has two kings
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            ppairk = YES;
        }
    //check for player has two queens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            ppairq = YES;
        }
    //check for player has two jacks
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            ppairj = YES;
        }
    //check for player has two tens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            ppairt = YES;
        }
    //check for player has two nines
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            ppair9 = YES;
        }
    //check for player has two eights
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            ppair8 = YES;
        }
    //check for player has two sevens
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            ppair7 = YES;
        }
    //check for player has two sixes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            ppair6 = YES;
        }
    //check for player has two fives
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            ppair5 = YES;
        }
    //check for player has two fours
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            ppair4 = YES;
        }
    //check for player has two threes
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            ppair3 = YES;
        }
    //check for player has two twos
    if((([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.p4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.p5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.p5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            ppair2 = YES;
        }
    //check for dealer has four aces
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
            dfoura = YES;
        }
    //check for dealer has four kings
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            dfourk = YES;
        }
    //check for dealer has four queens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            dfourq = YES;
        }
    //check for dealer has four jacks
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            dfourj = YES;
        }
    //check for dealer has four tens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            dfourt = YES;
        }
    //check for dealer has four nines
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            dfour9 = YES;
        }
    //check for dealer has four eights
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            dfour8 = YES;
        }
    //check for dealer has four sevens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            dfour7 = YES;
        }
    //check for dealer has four sixes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            dfour6 = YES;
        }
    //check for dealer has four fives
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            dfour5 = YES;
        }
    //check for dealer has four fours
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            dfour4 = YES;
        }
    //check for dealer has four threes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            dfour3 = YES;
        }
    //check for dealer has four twos
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            dfour2 = YES;
        }
    //check for dealer has three aces
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
            dthreea = YES;
        }
    //check for dealer has three kings
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            dthreek = YES;
        }
    //check for dealer has three queens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            dthreeq = YES;
        }
    //check for dealer has three jacks
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            dthreej = YES;
        }
    //check for dealer has three tens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            dthreet = YES;
        }
    //check for dealer has three nines
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            dthree9 = YES;
        }
    //check for dealer has three eights
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            dthree8 = YES;
        }
    //check for dealer has three sevens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            dthree7 = YES;
        }
    //check for dealer has three sixes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            dthree6 = YES;
        }
    //check for dealer has three fives
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            dthree5 = YES;
        }
    //check for dealer has three fours
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            dthree4 = YES;
        }
    //check for dealer has three threes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            dthree3 = YES;
        }
    //check for dealer has three twos
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            dthree2 = YES;
        }
    //check for dealer has two aces
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"52.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"49.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"50.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"51.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"52.png"]]))){
            dpaira = YES;
        }
    //check for dealer has two kings
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"48.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"45.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"46.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"47.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"48.png"]]))){
            dpairk = YES;
        }
    //check for dealer has two queens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"44.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"41.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"42.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"43.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"44.png"]]))){
            dpairq = YES;
        }
    //check for dealer has two jacks
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"40.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"37.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"38.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"39.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"40.png"]]))){
            dpairj = YES;
        }
    //check for dealer has two tens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"36.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"33.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"34.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"35.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"36.png"]]))){
            dpairt = YES;
        }
    //check for dealer has two nines
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"32.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"29.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"30.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"31.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"32.png"]]))){
            dpair9 = YES;
        }
    //check for dealer has two eights
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"28.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"25.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"26.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"27.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"28.png"]]))){
            dpair8 = YES;
        }
    //check for dealer has two sevens
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"24.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"21.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"22.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"23.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"24.png"]]))){
            dpair7 = YES;
        }
    //check for dealer has two sixes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"20.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"17.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"18.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"19.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"20.png"]]))){
            dpair6 = YES;
        }
    //check for dealer has two fives
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"16.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"13.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"14.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"15.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"16.png"]]))){
            dpair5 = YES;
        }
    //check for dealer has two fours
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"12.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"9.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"10.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"11.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"12.png"]]))){
            dpair4 = YES;
        }
    //check for dealer has two threes
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"8.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"5.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"6.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"7.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"8.png"]]))){
            dpair3 = YES;
        }
    //check for dealer has two twos
    if((([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d1Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d1Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d2Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d2Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d3Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d3Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))||
       (([self.d4Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d4Outlet.image isEqual:[UIImage imageNamed:@"4.png"]])&&
        ([self.d5Outlet.image isEqual:[UIImage imageNamed:@"1.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"2.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"3.png"]] ||
         [self.d5Outlet.image isEqual:[UIImage imageNamed:@"4.png"]]))){
            dpair2 = YES;
        }
    //player has four and dealer does not have four
    if((pfour2 == YES || pfour3 == YES || pfour4 == YES || pfour5 == YES || pfour6 == YES || pfour7 == YES || pfour8 == YES || pfour9 == YES || pfourt == YES || pfourj == YES || pfourq == YES || pfourk == YES || pfoura == YES) && (dfour2 == NO && dfour3 == NO && dfour4 == NO && dfour5 == NO && dfour6 == NO && dfour7 == NO && dfour8 == NO && dfour9 == NO && dfourt == NO && dfourj == NO && dfourq == NO && dfourk == NO && dfoura == NO)){
        self.player.text = @"Four of a kind Winner";
    }
    //player has three and dealer does not have three or four
    else if((pthree2 == YES || pthree3 == YES || pthree4 == YES || pthree5 == YES || pthree6 == YES || pthree7 == YES || pthree8 == YES || pthree9 == YES || pthreet == YES || pthreej == YES || pthreeq == YES || pthreek == YES || pthreea == YES) && (dthree2 == NO && dthree3 == NO && dthree4 == NO && dthree5 == NO && dthree6 == NO && dthree7 == NO && dthree8 == NO && dthree9 == NO && dthreet == NO && dthreej == NO && dthreeq == NO && dthreek == NO && dthreea == NO && dfour2 == NO && dfour3 == NO && dfour4 == NO && dfour5 == NO && dfour6 == NO && dfour7 == NO && dfour8 == NO && dfour9 == NO && dfourt == NO && dfourj == NO && dfourq == NO && dfourk == NO && dfoura == NO)){
        self.player.text = @"Trips Winner";
    }
    //player has pair and dealer does not have pair or three or four
    else if((ppair2 == YES || ppair3 == YES || ppair4 == YES || ppair5 == YES || ppair6 == YES || ppair7 == YES || ppair8 == YES || ppair9 == YES || ppairt == YES || ppairj == YES || ppairq == YES || ppairk == YES || ppaira == YES) && (dpair2 == NO && dpair3 ==NO && dpair4 == NO && dpair5 == NO && dpair6 == NO && dpair7 == NO && dpair8 == NO && dpair9 == NO && dpairt == NO && dpairj == NO && dpairq == NO && dpairk == NO && dpaira == NO && dthree2 == NO && dthree3 == NO && dthree4 == NO && dthree5 == NO && dthree6 == NO && dthree7 == NO && dthree8 == NO && dthree9 == NO && dthreet == NO && dthreej == NO && dthreeq == NO && dthreek == NO && dthreea == NO && dfour2 == NO && dfour3 == NO && dfour4 == NO && dfour5 == NO && dfour6 == NO && dfour7 == NO && dfour8 == NO && dfour9 == NO && dfourt == NO && dfourj == NO && dfourq == NO && dfourk == NO && dfoura == NO)){
        self.player.text = @"Pair Winner";
    }
    //dealer has four and player does not have four
    else if((dfour2 == YES || dfour3 == YES || dfour4 == YES || dfour5 == YES || dfour6 == YES || dfour7 == YES || dfour8 == YES || dfour9 == YES || dfourt == YES || dfourj == YES || dfourq == YES || dfourk == YES || dfoura == YES) && (pfour2 == NO && pfour3 == NO && pfour4 == NO && pfour5 == NO && pfour6 == NO && pfour7 == NO && pfour8 == NO && pfour9 == NO && pfourt == NO && pfourj == NO && pfourq == NO && pfourk == NO && pfoura == NO)){
        self.dealer.text = @"Four of a kind Winner";
    }
    //dealer has three and player does not have three or four
    else if((dthree2 == YES || dthree3 == YES || dthree4 == YES || dthree5 == YES || dthree6 == YES || dthree7 == YES || dthree8 == YES || dthree9 == YES || dthreet == YES || dthreej == YES || dthreeq == YES || dthreek == YES || dthreea == YES) && (pthree2 == NO && pthree3 == NO && pthree4 == NO && pthree5 == NO && pthree6 == NO && pthree7 == NO && pthree8 == NO && pthree9 == NO && pthreet == NO && pthreej == NO && pthreeq == NO && pthreek == NO && pthreea == NO && pfour2 == NO && pfour3 == NO && pfour4 == NO && pfour5 == NO && pfour6 == NO && pfour7 == NO && pfour8 == NO && pfour9 == NO && pfourt == NO && pfourj == NO && pfourq == NO && pfourk == NO && pfoura == NO)){
        self.dealer.text = @"Trips Winner";
    }
    //dealer has pair and player does not have pair or three or four
    else if((dpair2 == YES || dpair3 == YES || dpair4 == YES || dpair5 == YES || dpair6 == YES || dpair7 == YES || dpair8 == YES || dpair9 == YES || dpairt == YES || dpairj == YES || dpairq == YES || dpairk == YES || dpaira == YES) && (ppair2 == NO && ppair3 ==NO && ppair4 == NO && ppair5 == NO && ppair6 == NO && ppair7 == NO && ppair8 == NO && ppair9 == NO && ppairt == NO && ppairj == NO && ppairq == NO && ppairk == NO && ppaira == NO && pthree2 == NO && pthree3 == NO && pthree4 == NO && pthree5 == NO && pthree6 == NO && pthree7 == NO && pthree8 == NO && pthree9 == NO && pthreet == NO && pthreej == NO && pthreeq == NO && pthreek == NO && pthreea == NO && pfour2 == NO && pfour3 == NO && pfour4 == NO && pfour5 == NO && pfour6 == NO && pfour7 == NO && pfour8 == NO && pfour9 == NO && pfourt == NO && pfourj == NO && pfourq == NO && pfourk == NO && pfoura == NO)){
        self.dealer.text = @"Pair Winner";
    }
    else{
        
    }
}

@end
