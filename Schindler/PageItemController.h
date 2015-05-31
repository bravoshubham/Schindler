//
//  ViewPageController.h
//  Schindler
//
//  Created by Shubham Srivastava on 29/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageItemController : UIViewController

@property (nonatomic) NSUInteger itemIndex;
@property (nonatomic, strong) NSString *imageName1;
@property (nonatomic, strong) NSString *imageName2;
@property (nonatomic, strong) NSString *imageName3;

@property (nonatomic, weak) IBOutlet UIImageView *contentImageView1;
@property (nonatomic, weak) IBOutlet UIImageView *contentImageView2;
@property (nonatomic, weak) IBOutlet UIImageView *contentImageView3;


@end
