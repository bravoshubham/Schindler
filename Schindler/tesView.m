//
//  tesView.m
//  Schindler
//
//  Created by Shubham Srivastava on 28/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "tesView.h"

@implementation tesView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        [[NSBundle mainBundle] loadNibNamed:@"tesView" owner:self options:nil];
        
        
        [self addSubview:self.imgView1];
        [self addSubview:self.imgView2];
        [self addSubview:self.imgView3];
        
        [self addSubview:self.imgLabel1];
        [self addSubview:self.imgLabel2];
        [self addSubview:self.imgLabel3];
        
        [self addSubview:self.favButton1];
        [self addSubview:self.favButton2];
        [self addSubview:self.favButton3];
        
        
    }
    

    
    
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        [[NSBundle mainBundle] loadNibNamed:@"tesView" owner:self options:nil];
    }
    

    [self addSubview:self.imgView1];
    [self addSubview:self.imgView2];
    [self addSubview:self.imgView3];
    
    [self addSubview:self.imgLabel1];
    [self addSubview:self.imgLabel2];
    [self addSubview:self.imgLabel3];
    
    [self addSubview:self.favButton1];
    [self addSubview:self.favButton2];
    [self addSubview:self.favButton3];
    
    return self;
}

- (IBAction)favButtonPressed:(UIButton *)sender
{
    
    UIButton *button = sender;
    NSLog(@"selected favourite button tag %li", (long)button.tag);
    button.selected=!button.selected;
    if (button.selected) {
        [button setImage:[UIImage imageNamed:@"star_fill"] forState:UIControlStateNormal];
    }
    else{
        [button setImage:[UIImage imageNamed:@"star_unfill"] forState:UIControlStateNormal];
    }
    
    
    //[sender setImage:[UIImage imageNamed:@"star_fill"] forState:UIControlStateNormal];
}
- (void) setImageName1: (NSString *) name setImageName2:(NSString *)name2 setImageName3:(NSString *)name3
{
    _imageName1 = name;
    _imageName2 = name2;
    _imageName3 = name3 ;
    _imgView1.image = [UIImage imageNamed: _imageName1];
    _imgView2.image = [UIImage imageNamed: _imageName2];
    _imgView3.image = [UIImage imageNamed: _imageName3];
}
@end
