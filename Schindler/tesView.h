//
//  tesView.h
//  Schindler
//
//  Created by Shubham Srivastava on 28/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tesView : UIView
@property (nonatomic,strong) IBOutlet UIImageView *imgView1;
@property (nonatomic,strong) IBOutlet UIImageView *imgView2;
@property (nonatomic,strong) IBOutlet UIImageView *imgView3;

@property (nonatomic,strong) IBOutlet UILabel *imgLabel1;
@property (nonatomic,strong) IBOutlet UILabel *imgLabel2;
@property (nonatomic,strong) IBOutlet UILabel *imgLabel3;

@property (nonatomic,strong) IBOutlet UIButton *favButton1;
@property (nonatomic,strong) IBOutlet UIButton *favButton2;
@property (nonatomic,strong) IBOutlet UIButton *favButton3;

@property (nonatomic, strong) NSString *imageName1;
@property (nonatomic, strong) NSString *imageName2;
@property (nonatomic, strong) NSString *imageName3;

- (IBAction)favButtonPressed:(UIButton *)sender;

@end
