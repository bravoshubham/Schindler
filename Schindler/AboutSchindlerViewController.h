//
//  AboutSchindlerViewController.h
//  Schindler
//
//  Created by Shubham Srivastava on 27/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AboutSchindlerViewController : UIViewController<UIViewControllerTransitioningDelegate>
{
    
    NSArray *tableViewArr;
    NSArray *tableViewArr2;
    NSArray *dataArray;
    IBOutlet UIImageView *topBar ;
    UIView *lineView;
}

@property(weak,nonatomic) IBOutlet UIButton *backButton ;
- (IBAction)backButtonPressed:(id)sender;
- (IBAction)menubtn:(UIButton *)sender;
- (IBAction)menubtnPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic , strong) IBOutlet UIButton *_menuBtn;
@property (strong,nonatomic) IBOutlet UIView *aboutList ;
@property (strong,nonatomic) IBOutlet UIView *presentationList ;
@property (strong,nonatomic) IBOutlet UIScrollView *containerView;
@property (nonatomic , strong)  UITableView *_menuTableView;
@property (nonatomic , strong)  UITableView *_menuTableFooterView;
@property(strong, nonatomic) UITableView *tableView3;
@property (strong, nonatomic) UITableViewCell *customCell;
@property (readwrite, assign) BOOL timerRunning;
@property (nonatomic) BOOL buttonToggle;
@end
