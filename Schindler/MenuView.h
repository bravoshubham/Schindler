//
//  MenuView.h
//  Schindler
//
//  Created by Shubham Srivastava on 27/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import <UIKit/UIKit.h>

#define loadView() \
NSBundle *mainBundle = [NSBundle mainBundle]; \
NSArray *views = [mainBundle loadNibNamed:NSStringFromClass([self class]) owner:self options:nil]; \
[self addSubview:views[0]];

@interface MenuView : UIView
@property (nonatomic,strong) IBOutlet UIView *mainView ;
@end
