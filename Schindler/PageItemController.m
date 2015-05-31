//
//  ViewPageController.m
//  Schindler
//
//  Created by Shubham Srivastava on 29/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "PageItemController.h"

@interface PageItemController ()

@end

@implementation PageItemController
@synthesize itemIndex;
@synthesize imageName1;
@synthesize imageName2;
@synthesize imageName3;
@synthesize contentImageView1;
@synthesize contentImageView2;

@synthesize contentImageView3;

- (void)viewDidLoad {
    [super viewDidLoad];
    
contentImageView1.image = [UIImage imageNamed: imageName1];
    contentImageView2.image = [UIImage imageNamed: imageName2];
    contentImageView3.image = [UIImage imageNamed: imageName3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setImageName1: (NSString *) name setImageName2:(NSString *)name2 setImageName3:(NSString *)name3
{
    imageName1 = name;
    imageName2 = name2;
    imageName3 = name3 ;
    contentImageView1.image = [UIImage imageNamed: imageName1];
    contentImageView2.image = [UIImage imageNamed: imageName2];
    contentImageView3.image = [UIImage imageNamed: imageName3];
}


@end
