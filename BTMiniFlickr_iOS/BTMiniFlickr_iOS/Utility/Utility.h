//
//  Utility.h
//  BTMiniFlickr_iOS
//
//  Created by Neo Gao on 16/7/23.
//  Copyright © 2016年 BitTiger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CACHE_PATH [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define DOC_PATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

#define SCREEN_HEIGHT [Utility screenBoundsFixedToPortraitOrientation].size.height
#define SCREEN_WIDTH [Utility screenBoundsFixedToPortraitOrientation].size.width

#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define COLOR_BG_GRAY RGB(242,243,249)

#if defined(DEBUG)
#define TEST YES
#else
#define TEST NO
#define NSLog(format, ...)
#endif

#define FStr(format, ...) [NSString stringWithFormat:format, ##__VA_ARGS__]

@interface Utility : NSObject

+ (CGRect)screenBoundsFixedToPortraitOrientation;

@end
