//
//  Schindler5500ViewController.h
//  Schindler
//
//  Created by Shubham Srivastava on 30/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Schindler5500ViewController :  UIViewController<UIScrollViewDelegate,UIDocumentInteractionControllerDelegate>

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
@end
