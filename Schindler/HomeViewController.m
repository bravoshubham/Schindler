//
//  ViewController.m
//  Schindler
//
//  Created by Shubham Srivastava on 26/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "HomeViewController.h"
#import <pop/pop.h>
#import "UIImage+ImageEffects.h"
#import "HomeTableCell.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
-(void)viewDidAppear:(BOOL)animated
{
    if (_menuButton.selected) {
        _menuButton.selected=NO;
    }
    
    POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
    //positionAnimation.fromValue = [NSValue valueWithCGRect:self.collectionView.frame];
    positionAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(_containerView.frame.origin.x,_containerView.frame.origin.y, _containerView.frame.size.width, 0)];
    positionAnimation.springBounciness = 0.0f;
    positionAnimation.springSpeed = 20.0f;
    [_containerView pop_addAnimation:positionAnimation forKey:@"frameAnimation1"];
    
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [_containerView setFrame:CGRectZero];
    _containerView.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _aboutList.layer.borderWidth = 5.0;
    _aboutList.layer.borderColor = [UIColor colorWithRed:6/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f].CGColor;
    
    _presentationList.layer.borderWidth = 5.0;
    _presentationList.layer.borderColor = [UIColor colorWithRed:222/255.0f green:252/255.0f blue:166/255.0f alpha:1.0f].CGColor;
    
}

-(IBAction)menubtn:(UIButton *)sender
{
    _containerView.hidden = NO;
    UIView *view = _containerView ;
    if (sender.selected)
    {
        
        //view2 = self._tableView2;
        
        
        POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
        //positionAnimation.fromValue = [NSValue valueWithCGRect:view.frame];
        positionAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 0)];
        positionAnimation.springBounciness = 2.0f;
        positionAnimation.springSpeed = 15.0f;
        [view pop_addAnimation:positionAnimation forKey:@"frameAnimation"];
    }
    else
    {
        POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
        positionAnimation.fromValue = [NSValue valueWithCGRect:view.frame];
        positionAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 658)];
        positionAnimation.springBounciness = 2.0f;
        positionAnimation.springSpeed = 10.0f;
        [view pop_addAnimation:positionAnimation forKey:@"frameAnimation3"];
        
        
    }
    sender.selected = !sender.selected;
}

- (IBAction)menubtnPressed:(UIButton *)sender
{
    NSLog(@"Button Tag is - %ld",(long)sender.tag );
    if (sender.tag == 25) {
        [self performSegueWithIdentifier:@"openAboutSchindler" sender:self];
    }
    else if (sender.tag == 12)
   [self performSegueWithIdentifier:@"show3300AP" sender:self];
    else if (sender.tag == 13)
        [self performSegueWithIdentifier:@"show5500" sender:self];
    else if (sender.tag == 14)
        [self performSegueWithIdentifier:@"show7700" sender:self];
    else if (sender.tag == 15)
        [self performSegueWithIdentifier:@"showEscalator" sender:self];
    else if (sender.tag == 16)
        [self performSegueWithIdentifier:@"showPort" sender:self];
    else if (sender.tag == 17)
        [self performSegueWithIdentifier:@"showGreen" sender:self];
    else if (sender.tag == 18)
        [self performSegueWithIdentifier:@"showModernization" sender:self];
    else if (sender.tag == 26)
        [self performSegueWithIdentifier:@"showFavourite" sender:self];
    else if (sender.tag == 20)
        [self performSegueWithIdentifier:@"showPresentation" sender:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
