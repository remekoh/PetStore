//
//  StepperView.h
//  StepperViewControl
//
//  Created by rem{e}koh on 10/9/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>


// StepperViewDelegate Protocol
@protocol StepperViewDelegate <NSObject>

-(void) stepperViewDidValueChanged:(int) value;

@end

@interface StepperView : UIView
{
    UILabel *steps;
    UIButton *positiveButton;
    UIButton *negativeButton;
    int currentValue;
}

@property (nonatomic, weak) id<StepperViewDelegate> delegate;

@end
