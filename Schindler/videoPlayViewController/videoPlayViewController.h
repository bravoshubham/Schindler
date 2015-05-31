//
//  videoPlayViewController.h
//  ThePortTechnology
//
//  Created by Amit Garg on 6/25/14.
//  Copyright (c) 2014 Amit Garg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface videoPlayViewController : UIViewController
{
    AVPlayer * avPlayer;
    AVPlayerLayer *avPlayerLayer;
    CMTime time;
}
@end
