//
//  ViewController.m
//  BTMiniFlickr_iOS
//
//  Created by Neo Gao on 16/7/23.
//  Copyright © 2016年 BitTiger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *emptyView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (void)setEmptyViewCenter:(CGPoint)emptyViewCenter {
    _emptyViewCenter = emptyViewCenter;
    _emptyView.center = emptyViewCenter;
}
- (void)viewIsEmpty:(BOOL)empty {
    if (empty) {
        if (!_emptyView) {
            self.emptyView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 170)];
            [self.view addSubview:_emptyView];
            if (_emptyViewCenter.x != 0 || _emptyViewCenter.y != 0) {
                _emptyView.center = _emptyViewCenter;
            } else {
                _emptyView.center = CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2-62.5);
            }
            
            UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 125)];
            iv.image = [UIImage imageNamed:@"Pic_01"];
            [_emptyView addSubview:iv];
            
            UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 140, 149, 30)];
            lb.textAlignment = NSTextAlignmentCenter;
            lb.textColor = [UIColor darkGrayColor];
            //lb.text = I18NString(@"暂时没有数据", nil);
            [_emptyView addSubview:lb];
        }
        _emptyView.hidden = NO;
    } else {
        _emptyView.hidden = YES;
    }
}

@end
