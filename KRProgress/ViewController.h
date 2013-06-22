//
//  ViewController.h
//  KRProgress
//
//  Created by Kalvar on 13/6/22.
//  Copyright (c) 2013年 Kuo-Ming Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


#pragma --mark Normal IBActions
-(IBAction)startNormal:(id)sender;
-(IBAction)stoptNormal:(id)sender;

#pragma --mark Translucent IBActions
-(IBAction)startTranslucent:(id)sender;
-(IBAction)stopTranslucent:(id)sender;
-(IBAction)startTranslucentAndTipText:(id)sender;
-(IBAction)stopTranslucentAndTipText:(id)sender;
-(IBAction)startTranslucentCornerMode:(id)sender;
-(IBAction)stopTranslucentCornerMode:(id)sender;

#pragma --mark Banner Mode IBActions
-(IBAction)startBannerMode:(id)sender;
-(IBAction)stopBannerMode:(id)sender;

#pragma --mark Block Mode IBActions
-(IBAction)startNormalBlock:(id)sender;
-(IBAction)startTranslucentBlock:(id)sender;
-(IBAction)startBannerBlock:(id)sender;
-(IBAction)startCornerBlock:(id)sender;


@end
