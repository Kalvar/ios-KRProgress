## Screen Shot

<img src="https://dl.dropbox.com/u/83663874/GitHubs/KRProgress-1.png" alt="KRProgress" title="KRProgress" style="margin: 20px;" class="center" />
。
<img src="https://dl.dropbox.com/u/83663874/GitHubs/KRProgress-2.png" alt="KRProgress" title="KRProgress" style="margin: 20px;" class="center" />

## Supports

KRProgress supports ARC.

## How To Get Started

When you need to show the waiting information on the view to show that you can easy using KRProgress to reach your goal. And you need to add the " QuartzCore.framework " in the projects.

``` objective-c
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
    [self._krProgress startCornerTranslucentWithView:self.view];
}

-(IBAction)stopTranslucentCornerMode:(id)sender
{
    [self._krProgress stopTranslucentFromActivitingView:self.view];
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
```

## Version

V1.0.

## License

MIT.
