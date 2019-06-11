//
//  Forecast.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 27/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "Constants.h"

@interface Forecast : NSObject <CLLocationManagerDelegate>

- (void)initLocationManager;
- (void)updateForecastData;

@property (strong, nonatomic) CLLocationManager *locationManager;

@property (strong, nonatomic) NSMutableDictionary *weatherReport;

@property (strong, nonatomic) NSNumber *currentTemp;
@property (strong, nonatomic) NSNumber *currentHumidity;
@property (strong, nonatomic) NSNumber *currentPrecipProbability;
@property (strong, nonatomic) NSString *currentWeatherSummary;
@property (strong, nonatomic) NSString *currentWeatherIcon;

@property (nonatomic) BOOL hasDisplayedCurrentForecastData;
@property (nonatomic) float previousLatitude;
@property (nonatomic) float previousLongitude;
@property (nonatomic) float currentLatitude;
@property (nonatomic) float currentLongitude;

@end
