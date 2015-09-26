//
//  ViewController.m
//  ForceButtonExample
//
//  Created by Yu Sugawara on 9/27/15.
//  Copyright © 2015 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"
#import <ForceTapGestureRecognizer/ForceTapGestureRecognizer.h>

@interface ViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *singleTapGestureRecognizer;
@property (weak, nonatomic) ForceTapGestureRecognizer *forceTapGestureRecognizer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ForceTapGestureRecognizer *forceTap = [[ForceTapGestureRecognizer alloc] initWithTarget:self action:@selector(forceTapped)];
    forceTap.delegate = self;
    [self.button addGestureRecognizer:forceTap];
    self.forceTapGestureRecognizer = forceTap;
}

- (IBAction)singleTapped:(id)sender
{
    NSLog(@"%s", __func__);
}

- (void)forceTapped
{
    NSLog(@"%s", __func__);
}

@end
