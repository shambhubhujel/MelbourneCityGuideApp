//
//  DetailsViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 8/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.layer.cornerRadius= 4;
    self.button.layer.cornerRadius  =4;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)direction:(id)sender {
}
@end
