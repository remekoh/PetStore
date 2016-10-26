//
//  ViewController.h
//  PetStore
//
//  Created by rem{e}koh on 10/19/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MyCustomControlsFramework/MyCustomControlsFramework.h>
#import "UIColor+Additions.h"

@interface ViewController : UIViewController<StepperViewDelegate>

{
    NotificationView *notificationView;
    StepperView *stepperView;
}


@property (nonatomic, weak) UILabel *displayLabel;


@end

