//
//  ViewController.h
//  Schindler
//
//  Created by Shubham Srivastava on 26/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
{
    IBOutlet UIButton *customerbtn, *portShowbtn, *technologybtn, *referencebtn;
    IBOutlet UIView *menuView;
    UIImageView *img, *img2;
    IBOutlet UIButton *googlePlayBtn, *appstoreAppBtn;
    int graphicsIndex;
    NSArray *list;
    BOOL pageControlBeingUsed;
    NSInteger page;
    UIImageView *imgV;
    NSArray *tableViewArr;
    NSArray *dataArray;
    IBOutlet UIImageView *topBar ;
    UIView *lineView;
    
    
    }
//stun@zihara.asia
@property (strong, nonatomic) IBOutlet UIView *ImageViewrot;
- (IBAction)menubtn:(UIButton *)sender;
- (IBAction)menubtnPressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIView *bkgView;
@property (strong, nonatomic) IBOutlet UIButton *menuButton;
// - (IBAction)RotateImage:(id)sender;

@property (strong,nonatomic) IBOutlet UIScrollView *containerView;
@property (strong,nonatomic) IBOutlet UIView *aboutList ;
@property (strong,nonatomic) IBOutlet UIView *presentationList ;
@property (strong, nonatomic) UITableViewCell *customCell;
@property (readwrite, assign) BOOL timerRunning;
@property (nonatomic) BOOL buttonToggle;
@end
