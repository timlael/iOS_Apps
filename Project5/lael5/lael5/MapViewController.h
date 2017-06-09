//
//  MapViewController.h
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Location.h"
#import "LocationManager.h"
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate>
{
@public
    LocationManager *locations;
}
@property(nonatomic) NSMutableArray *mapFriends;


@end
