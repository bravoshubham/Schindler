//
//  videoPlayViewController.m
//  ThePortTechnology
//
//  Created by Amit Garg on 6/25/14.
//  Copyright (c) 2014 Amit Garg. All rights reserved.
//

#import "videoPlayViewController.h"
#import "homeViewController.h"

@interface videoPlayViewController ()

@end

@implementation videoPlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationController.navigationBarHidden = YES;
    
    [self playvideo];
}
-(void)playvideo
{
    NSString * ressource = [[NSBundle mainBundle] pathForResource:@"port_logo_3_sec" ofType:@".mp4"];
    
    
    NSURL * urlPathOfVideo = [NSURL fileURLWithPath:ressource];
    avPlayer = [AVPlayer playerWithURL:urlPathOfVideo];
    avPlayer.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    
    avPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:avPlayer];
    
  avPlayerLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    
    NSLog(@"origin_X=%ld",(long)self.view.frame.size.width);
     NSLog(@"origin_Y=%ld",(long)self.view.frame.size.height);
    
    // avPlayerLayer.frame = CGRectMake(avPlayerLayer.frame.origin.x,avPlayerLayer.frame.origin.y,avPlayerLayer.frame.size.width,avPlayerLayer.frame.size.height);
    
    [avPlayerLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    [self.view.layer addSublayer: avPlayerLayer];
    
    [avPlayer play];
    time = kCMTimeZero;
    
    //prevent music coming from other app to be stopped
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:nil];
    
    
    // -------------------------------------------------------------------------
    
    
    //AVPlayer Notifications
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[avPlayer currentItem]];
}

- (void)playerItemDidReachEnd:(NSNotification *)notification
{
    // AVPlayerItem *p = [notification object];
    // [p seekToTime:kCMTimeZero];
    
    [self performSelector:@selector(selectAllview)withObject:Nil afterDelay:2.0f];
    
    
}

-(void)selectAllview
{
    [self performSegueWithIdentifier:@"openHome" sender:self];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
