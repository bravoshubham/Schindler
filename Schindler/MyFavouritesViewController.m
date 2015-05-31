//
//  MyFavouritesViewController.m
//  Schindler
//
//  Created by Shubham Srivastava on 31/05/15.
//  Copyright (c) 2015 Shubham Srivastava. All rights reserved.
//

#import "MyFavouritesViewController.h"
#import <pop/pop.h>
#import "tesView.h"

@interface MyFavouritesViewController ()

@end

@implementation MyFavouritesViewController

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
    
    
    tesView *tes1 = [[tesView alloc] initWithFrame:CGRectMake(0, 0, 979, 254)];
    tesView *tes2 = [[tesView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(tes1.frame), 0, 979, 254)];
    tesView *tes3 = [[tesView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(tes2.frame), 0, 979, 254)];
    [_scrollView addSubview:tes1];
    [_scrollView addSubview:tes2];
    [_scrollView addSubview:tes3];
    
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    singleTap.numberOfTapsRequired = 1;
    [tes1.imgView1 setUserInteractionEnabled:YES];
    [tes1.imgView1 addGestureRecognizer:singleTap];
    
    CGRect viewSize = _scrollView.bounds;
    _scrollView.contentSize = CGSizeMake(3*_scrollView.frame.size.width, _scrollView.frame.size.height);
    viewSize = CGRectOffset(viewSize, _scrollView.bounds.size.width, 0);
    
    [self.view bringSubviewToFront:_containerView];
    
}
-(void)tapDetected{
    NSLog(@"single Tap on imageview");
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"DNA" withExtension:@"pdf"];
    
    if (URL) {
        // Initialize Document Interaction Controller
        self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:URL];
        
        // Configure Document Interaction Controller
        [self.documentInteractionController setDelegate:self];
        
        // Preview PDF
        [self.documentInteractionController presentPreviewAnimated:YES];
    }
}
- (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller {
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // self.tableView3.tableHeaderView = self.tableView;
    
    
    _aboutList.layer.borderWidth = 5.0;
    _aboutList.layer.borderColor = [UIColor colorWithRed:6/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f].CGColor;
    
    _presentationList.layer.borderWidth = 5.0;
    _presentationList.layer.borderColor = [UIColor colorWithRed:222/255.0f green:252/255.0f blue:166/255.0f alpha:1.0f].CGColor;
    
    [_pageControl setFrame:CGRectMake(_pageControl.frame.origin.x, _pageControl.frame.origin.y, _pageControl.frame.size.width, 90)];
    
    
    
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
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



@end
