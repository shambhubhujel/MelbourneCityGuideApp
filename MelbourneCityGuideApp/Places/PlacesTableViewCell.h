//
//  PlacesTableViewCell.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 8/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlacesTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellAddress;
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;

@end

NS_ASSUME_NONNULL_END
