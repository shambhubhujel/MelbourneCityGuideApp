//
//  ContactViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 10/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "ContactViewController.h"

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
}

- (IBAction)callUS:(id)sender {
}
@end
