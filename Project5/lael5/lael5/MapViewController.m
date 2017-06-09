//
//  MapViewController.m
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "MapViewController.h"
#import "Friend.h"


@interface MapViewController () <MKMapViewDelegate>
@property (nonatomic, retain) IBOutlet MKMapView *map;

@end

@implementation MapViewController
@synthesize mapFriends, map;

- (void) viewDidAppear:(BOOL)animated{
    
    [map setMapType:MKMapTypeHybrid];
/*  Default Location coded and displayed    */
    Location *def = [Location new];
    CLLocationCoordinate2D point;
    point.latitude = def.latitude;
    point.longitude = def.longitude;
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = point;
    annotation.title = @"You are here";
    annotation.subtitle = def.address;
    [self.map addAnnotation: annotation];

/*      50km Map Area                       */
    MKCoordinateRegion myRegion = MKCoordinateRegionMakeWithDistance(point, 50000, 50000);
    [self.map setRegion: myRegion];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    
/*	Get complete locations from passed data	*/
    LocationManager *lm1 = [LocationManager new];
    for (int i=0; i<[mapFriends count]; i++) {
        Location *temp = [lm1 getLocationWithAddress: (NSString *)[mapFriends[i] address]];
        Location *nloc = [[Location alloc] initWithName:[mapFriends[i] getName] andAddress: (NSString *)[mapFriends[i] address] andLatitude:[temp latitude] andLongitude:[temp longitude]];
        [lm1.locs addObject:nloc];
    }
/*	Create and place Pins for Locations		*/
    for (int j=0; j<[lm1.locs count]; j++){
        CLLocationCoordinate2D np;
        np.latitude = [lm1.locs[j] latitude];
        np.longitude = [lm1.locs[j] longitude];
        MKPointAnnotation *anno = [MKPointAnnotation new];
        anno.title = [lm1.locs[j] name];
        anno.subtitle = (NSString *)[lm1.locs[j] address];
        anno.coordinate = np;
        [map addAnnotation:anno];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
