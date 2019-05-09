//
//  ContactViewController.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 10/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UIButton *btnDirection;
@property (weak, nonatomic) IBOutlet UIButton *btnCallus;
@property (weak, nonatomic) IBOutlet UIButton *btnEmailUs;
@property (weak, nonatomic) IBOutlet UIButton *btnSocialLinks;
- (IBAction)getDirection:(id)sender;
- (IBAction)callUS:(id)sender;

@end

NS_ASSUME_NONNULL_END
