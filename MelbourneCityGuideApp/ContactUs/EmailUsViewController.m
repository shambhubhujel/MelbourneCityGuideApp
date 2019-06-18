//
//  EmailUsViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 10/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "EmailUsViewController.h"

@interface EmailUsViewController ()

@end

@implementation EmailUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.messageField.layer.cornerRadius = 5;
    self.sendBtn.layer.cornerRadius = 5;
    
    self.navigationItem.title = @"Email Us";
    
    self.messageField.delegate = self;
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)dismissedKeybord:(id)sender{
    
    [self resignFirstResponder];
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]]. location == NSNotFound) {
        
        return YES;
        
    }
    
    [textView resignFirstResponder];
    
    return NO;
    
}

- (IBAction)btnSend:(id)sender {
    
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        
        [composer setToRecipients:@[@"shambhu.bhujel@gmail.com"]];
        [composer setSubject:@"Message from my app!"];
        
        [composer setMessageBody:[NSString stringWithFormat:
                                  @"Name: %@ \nEmail: %@ \n\nMessage: %@",
                                  self.nameField.text,
                                  self.emailField.text,
                                  self.messageField.text] isHTML:NO];
        
        [self presentViewController:composer animated:YES completion:nil];
        
    } else {
        
        NSLog(@"Cant send mail");
        
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
