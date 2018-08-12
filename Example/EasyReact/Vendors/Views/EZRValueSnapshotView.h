//
//  EZRValueSnapshotView.h
//  EasyReact_Example
//
//  Created by nero on 2018/7/31.
//  Copyright © 2018年 EasyReact. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EZRValueSnapshotView : UIView

- (void)addNewValue:(NSString *)value;
@property (nonatomic, strong) UIColor *snapshotColor;
@property (nonatomic, copy) NSString *value;
@property (nonatomic, strong) NSDate *time;

@end
