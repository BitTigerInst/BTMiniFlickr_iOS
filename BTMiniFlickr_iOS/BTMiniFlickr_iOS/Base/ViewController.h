//
//  ViewController.h
//  BTMiniFlickr_iOS
//
//  Created by Neo Gao on 16/7/23.
//  Copyright © 2016年 BitTiger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utility.h"

@interface ViewController : UIViewController

- (IBAction)leftHeaderBtnPressed:(id)sender;
- (IBAction)rightHeaderBtnPressed:(id)sender;

- (void)viewIsEmpty:(BOOL)empty;
@property (nonatomic,assign) CGPoint emptyViewCenter;

@end
