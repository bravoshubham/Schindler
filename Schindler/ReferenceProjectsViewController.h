//
//  ReferenceProjectsViewController.h
//  Schindler
//
//  Created by Shubham Srivastava on 31/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReferenceProjectsViewController : UIViewController<UIScrollViewDelegate,UIDocumentInteractionControllerDelegate,UIGestureRecognizerDelegate>

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

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIView *scrollInnerView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;

@property(nonatomic,strong)UIDocumentInteractionController *documentInteractionController;


@property (nonatomic, strong) IBOutlet UIImageView *layer1;
@property (nonatomic, strong) IBOutlet UIImageView *layer2;
@property (nonatomic, strong) IBOutlet UIImageView *layer3;
@property (nonatomic, strong) IBOutlet UIImageView *layer4;
@property (nonatomic, strong) IBOutlet UIImageView *layer5;
@property (nonatomic, strong) IBOutlet UIImageView *layer6;
@end
