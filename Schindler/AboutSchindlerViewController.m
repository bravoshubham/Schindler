//
//  AboutSchindlerViewController.m
//  Schindler
//
//  Created by Shubham Srivastava on 27/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "AboutSchindlerViewController.h"
#import <pop/pop.h>





@interface AboutSchindlerViewController ()

@end

@implementation AboutSchindlerViewController


-(void)viewDidAppear:(BOOL)animated
{

    
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
       // self.tableView3.tableHeaderView = self.tableView;
    
    
    _aboutList.layer.borderWidth = 5.0;
    _aboutList.layer.borderColor = [UIColor colorWithRed:6/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f].CGColor;
    
    _presentationList.layer.borderWidth = 5.0;
    _presentationList.layer.borderColor = [UIColor colorWithRed:222/255.0f green:252/255.0f blue:166/255.0f alpha:1.0f].CGColor;

    
}
- (IBAction)menubtnPressed:(UIButton *)sender
{
    NSLog(@"Button Tag is - %ld",(long)sender.tag );
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
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backButtonPressed:(id)sender
{
     [self.navigationController popViewControllerAnimated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
