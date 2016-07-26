//
//  Utility.m
//  BTMiniFlickr_iOS
//
//  Created by Neo Gao on 16/7/23.
//  Copyright © 2016年 BitTiger. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (CGRect)screenBoundsFixedToPortraitOrientation {
    UIScreen *screen = [UIScreen mainScreen];
#ifdef __IPHONE_8_0
    if ([screen respondsToSelector:@selector(fixedCoordinateSpace)]) {
        return [screen.coordinateSpace convertRect:screen.bounds toCoordinateSpace:screen.fixedCoordinateSpace];
    }
#endif
    return screen.bounds;
}

@end
