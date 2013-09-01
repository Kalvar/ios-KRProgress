//
//  ViewController.m
//  KRProgress
//
//  Created by Kalvar on 13/6/22.
//  Copyright (c) 2013年 Kuo-Ming Lin. All rights reserved.
//

#import "ViewController.h"
#import "KRProgress.h"

@interface ViewController ()

@property (nonatomic, strong) KRProgress *_krProgress;

@end

@implementation ViewController

@synthesize _krProgress;

- (void)viewDidLoad
{
    [super viewDidLoad];
	_krProgress = [[KRProgress alloc] init];
    //_krProgress.borderColor = [UIColor colorWithRed:1.0f/255.0f green:1.0f/255.0f blue:1.0f/255.0f alpha:0.85f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma --mark Normal IBActions
-(IBAction)startNormal:(id)sender
{
    [self._krProgress startWithView:self.view];
}

-(IBAction)stoptNormal:(id)sender
{
    [self._krProgress stopActivitingView:self.view];
}

#pragma --mark Translucent IBActions
-(IBAction)startTranslucent:(id)sender
{
    [self._krProgress startTranslucentWithView:self.view];
}

-(IBAction)stopTranslucent:(id)sender
{
    [self._krProgress stopTranslucentFromActivitingView:self.view];
}

-(IBAction)startTranslucentAndTipText:(id)sender
{
    [self._krProgress startTranslucentWithView:self.view setTipText:@"Test Loading ..."];
}

-(IBAction)stopTranslucentAndTipText:(id)sender
{
    [self._krProgress stopTranslucentAndRemoveTipTextFromView:self.view];
}

-(IBAction)startTranslucentCornerMode:(id)sender
{
    self._krProgress.activityStyle = UIActivityIndicatorViewStyleWhiteLarge;
    //[self._krProgress startCornerTranslucentWithView:self.view];
    [self._krProgress startCornerTranslucentWithView:self.view tipText:@"100.0 %" lockWindow:YES];
}

-(IBAction)stopTranslucentCornerMode:(id)sender
{
    //[self._krProgress stopTranslucentFromActivitingView:self.view];
    [self._krProgress stopCornerTranslucentFromActivitingView:self.view];
}

-(void)theCustomActivityStyleWithFigure3
{
    //If you wanna show the style of Figure 3 that you can follow this method.
    [self._krProgress startCornerTranslucentWithView:[[UIApplication sharedApplication] keyWindow]
                                             tipText:[NSString stringWithFormat:@"%.2f%%", 50.0f]
                                          lockWindow:YES];
    
    //If you wanna dynamic changing the tip text that you can do this.
    [self._krProgress directChangeTipText:[NSString stringWithFormat:@"%.2f%%", 100.0f]
                       withActivitingView:[[UIApplication sharedApplication] keyWindow]];
    
    //If you wanna stop it.
    [self._krProgress stopCornerTranslucentFromActivitingView:[[UIApplication sharedApplication] keyWindow]];
}

#pragma --mark Banner Mode IBActions
-(IBAction)startBannerMode:(id)sender
{
    [self._krProgress startTopBannerModeWithView:self.view];
}

-(IBAction)stopBannerMode:(id)sender
{
    [self._krProgress stopTopBannerModeFromView:self.view];
}

#pragma --mark Block Mode IBActions
-(IBAction)startNormalBlock:(id)sender
{
    [self._krProgress startWithView:self.view executionHandler:^{
        for( int i=0; i<10000; ++i )
        {
            NSLog(@"startNormalBlock : %i", i);
        }
    }];
}

-(IBAction)startTranslucentBlock:(id)sender
{
    [self._krProgress startTranslucentWithView:self.view executionHandler:^{
        for( int i=0; i<10000; ++i )
        {
            NSLog(@"startTranslucentBlock : %i", i);
        }
    }];
    
    /*
    [self._krProgress startTranslucentWithView:self.view setTipText:@"Test Loading with Block" executionHandler:^{
        //...
    }];
     */
}

-(IBAction)startBannerBlock:(id)sender
{
    [self._krProgress startTopBannerModetWithView:self.view executionHandler:^{
        for( int i=0; i<10000; ++i )
        {
            NSLog(@"startBannerBlock : %i", i);
        }
    }];
}

-(IBAction)startCornerBlock:(id)sender
{
    [self._krProgress startCornerTranslucentWithView:self.view executionHandler:^{
        for( int i=0; i<10000; ++i )
        {
            NSLog(@"startCornerBlock : %i", i);
        }
    }];
}

@end
