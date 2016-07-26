//
//  CollectionViewController.m
//  BTMiniFlickr_iOS
//
//  Created by Neo Gao on 16/7/23.
//  Copyright © 2016年 BitTiger. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@property (strong, nonatomic) UIView *emptyView;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classe
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)leftHeaderBtnPressed:(id)sender {
    NSArray *vcs = self.navigationController.childViewControllers;
    if (vcs.count && vcs[0] == self) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)rightHeaderBtnPressed:(id)sender {
    
}


@end