//
//  DetailsViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 8/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "DetailsViewController.h"
#import "MapPin.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.layer.cornerRadius= 4;
    self.button.layer.cornerRadius  =4;
    self.detailTitle.text=self.detailModal[0];
    self.detailAddress.text=self.detailModal[1];
    self.detailImage.image=[UIImage imageNamed:self.detailModal[2]];
    self.detailDescription.text=self.detailModal[3];
    //To set location of places
    MKCoordinateRegion  region;
    MKCoordinateSpan span;
    span.latitudeDelta=0.005;
    span.longitudeDelta=0.005;
    CLLocationCoordinate2D location;
    location.latitude  =[self.detailModal[4] doubleValue];
    location.longitude=[self.detailModal[5] doubleValue];
    region.span=span;
    region.center=location;
    [self.mapView   setRegion:region animated:  YES];
    //To set Pin point of plsce location
    MapPin *ann =[[MapPin alloc]init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//To Get direction to place using iMaps.
- (IBAction)direction:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://maps.apple.com/?daddr=%@,%@",self.detailModal[4],self.detailModal[5]]] options:@{} completionHandler:nil];
    
}

@end
