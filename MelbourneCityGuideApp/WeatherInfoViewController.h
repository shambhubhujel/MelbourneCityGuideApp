//
//  WeatherInfoViewController.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 27/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forecast.h"
#import "Constants.h"

@interface WeatherInfoViewController: UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblCurrentHumidity;
@property (strong, nonatomic) IBOutlet UILabel *lblCurrentPrecipProb;
@property (strong, nonatomic) IBOutlet UILabel *lblCurrentWeatherSummary;
@property (strong, nonatomic) IBOutlet UILabel *lblCurrentTemp;
@property (strong, nonatomic) IBOutlet UIImageView *imgWeatherIcon;

@property (strong, nonatomic) Forecast *weatherForecast;

@property (nonatomic) BOOL displayingWaitingScreen;

@end
