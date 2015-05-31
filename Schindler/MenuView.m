//
//  MenuView.m
//  Schindler
//
//  Created by Shubham Srivastava on 27/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "MenuView.h"

@implementation MenuView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        [[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil];
        
        self.bounds = self.mainView.frame;
        
        [self addSubview:self.mainView];
    }
    
    
    
    
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        [[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil];
        
        self.frame = self.mainView.frame;
        
        [self addSubview:self.mainView];
    }
    
    
    
    
    
    return self;
}
@end
