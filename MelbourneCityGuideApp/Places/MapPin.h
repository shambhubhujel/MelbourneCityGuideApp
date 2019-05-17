//
//  MapPin.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 13/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation>{
    CLLocationCoordinate2D  coordiante;
    
}
@property(nonatomic,assign)CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
