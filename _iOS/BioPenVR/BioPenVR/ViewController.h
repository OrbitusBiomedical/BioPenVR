//
//  ViewController.h
//  BioPenVR
//
//  Created by Seth Ashkenazi on 10/11/15.
//  Copyright © 2015 OrbitusRobotics. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>
{
    IBOutlet UIWebView *webView;
    NSMutableArray *vr_example_urls;
    int selected_vr_example_index;
}

@end

