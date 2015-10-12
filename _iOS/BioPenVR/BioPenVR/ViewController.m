//
//  ViewController.m
//  BioPenVR
//
//  Created by Seth Ashkenazi on 10/11/15.
//  Copyright © 2015 OrbitusRobotics. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    vr_example_urls = [NSMutableArray new];
    
    [vr_example_urls addObject:@"http://threejs.org/examples/css3dstereo_periodictable.html"];
    [vr_example_urls addObject:@"http://orbitusbiomedical.github.io/BioPen/pen.html#9723?alpha=Benzene"];
    [vr_example_urls addObject:@"http://threejs.org/examples/canvas_effects_stereo.html"];
    [vr_example_urls addObject:@"http://orbitusbiomedical.github.io/BioPen/pen.html#9723?alpha=Benzene&deviceOrientation=true"];
    [vr_example_urls addObject:@"http://threejs.org/examples/canvas_effects_stereo.html"];
    [vr_example_urls addObject:@"http://orbitusbiomedical.github.io/BioPen/pen.html#9723?alpha=Benzene&stereo=true"];
    [vr_example_urls addObject:@"http://threejs.org/examples/canvas_effects_stereo.html"];
    [vr_example_urls addObject:@"http://orbitusbiomedical.github.io/BioPen/pen.html#9723?alpha=Benzene&stereo=true&deviceOrientation=true"];

    
    selected_vr_example_index = 0;
    
    UITapGestureRecognizer * recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    recognizer.delegate = self;
    [self.view addGestureRecognizer:recognizer];

    NSString *urlAddress = [vr_example_urls objectAtIndex:selected_vr_example_index];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

}


- (void)handleTap:(UITapGestureRecognizer *)recognizer
{
    selected_vr_example_index++;
    if (selected_vr_example_index == vr_example_urls.count)
        selected_vr_example_index = 0;
    
    NSString *urlAddress = [vr_example_urls objectAtIndex:selected_vr_example_index];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
