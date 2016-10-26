//
//  ViewController.m
//  PetStore
//
//  Created by rem{e}koh on 10/19/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // NotificationView
    notificationView = [[NotificationView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
    
    notificationView.backgroundColor = [UIColor colorFromHexString:@"5c6bc0"];
    
    [self.view addSubview:notificationView];
    
    // NotificationView SwipeDown Gesture setup
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDown];
    
    // NotificationView SwipeDown Gesture setup
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUp];
    
    
    // StepperView
    stepperView = [[StepperView alloc]initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    stepperView.delegate = self;
    stepperView.backgroundColor = [UIColor colorFromHexString:@"6bc05c"];
    
    [self.view addSubview:stepperView];
    
    // Center StepperView
    CGPoint center = self.view.center;
    [stepperView setCenter:center];
    
}

// NotificationView SwipeDown Method
-(void) swipeDown:(UIGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:1.0 animations:^{notificationView.center = self.view.center;}];
}

// NotificationView SwipeUp Method
- (void) swipeUp:(UIGestureRecognizer * )recognizer {
    
    [UIView animateWithDuration: 1.0 animations:^{
        
        notificationView.frame = CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height);
        
    }];
    
}


// StepperView Method
-(void) stepperViewDidValueChanged:(int)value {
    self.displayLabel.text = [NSString stringWithFormat:@"%i", value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
