//
//  DetailsViewController.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 8/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (strong,nonatomic) NSArray *detailModal;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailAddress;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)direction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

NS_ASSUME_NONNULL_END
