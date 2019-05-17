//
//  ContactViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 10/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "ContactViewController.h"
#import "MapPInPointer.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btnDirection.layer.cornerRadius=5;
    self.btnCallus.layer.cornerRadius=5;
    self.btnEmailUs.layer.cornerRadius=5;
    self.btnSocialLinks.layer.cornerRadius=5;
    
    //Locate Office location in MapView
    MKCoordinateRegion region;
    MKCoordinateSpan    span;
    CLLocationCoordinate2D location;
    span.latitudeDelta =0.005;
    span.longitudeDelta =0.005;
    location.latitude= -37.8178168;
    location.longitude=144.9535707;
    region.span=span;
    region.center=location;
    [self.mapView setRegion:region animated:YES];
    
    //Set Location pointer
    MapPInPointer *ann =[[MapPInPointer alloc] init];
    ann.coordinate  =location;
    [self.mapView addAnnotation: ann];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)getDirection:(id)sender {
    [[UIApplication sharedApplication ]openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=-37.8178168,144.9535750"]options:@{} completionHandler:nil];
    
}

- (IBAction)callUS:(id)sender {
    [[UIApplication sharedApplication ]openURL:[NSURL URLWithString:@"tel:0452323483"]options:@{} completionHandler:nil];}

@end
