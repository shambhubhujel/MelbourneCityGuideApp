//
//  EmailUsViewController.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 10/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailUsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *sendBtn;
- (IBAction)btnSend:(id)sender;
- (IBAction)dismissedKeybord:(id)sender;

@end

NS_ASSUME_NONNULL_END
