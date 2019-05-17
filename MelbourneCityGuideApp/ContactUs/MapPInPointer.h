//
//  MapPInPointer.h
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 13/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPInPointer : NSObject <MKAnnotation>{
    CLLocationCoordinate2D coordinate;
}
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;


@end

NS_ASSUME_NONNULL_END
