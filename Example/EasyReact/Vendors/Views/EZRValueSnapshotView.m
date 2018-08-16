//
//  EZRValueSnapshotView.m
//  EasyReact_Example
//
//  Created by nero on 2018/7/31.
//  Copyright © 2018年 EasyReact. All rights reserved.
//

#import "EZRValueSnapshotView.h"

@interface EZRValueSnapshotView ()

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation EZRValueSnapshotView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle bundleForClass:EZRValueSnapshotView.class] loadNibNamed:@"EZRValueSnapshotView" owner:self options:nil];
        [self addSubview:self.contentView];
        [super setBackgroundColor:[UIColor clearColor]];
        self.valueLabel.layer.cornerRadius = CGRectGetWidth(self.valueLabel.frame) / 2;
        self.valueLabel.layer.borderColor = [UIColor blackColor].CGColor;
        self.valueLabel.layer.backgroundColor = [UIColor redColor].CGColor;
        self.valueLabel.layer.borderWidth = 1.0;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [[NSBundle bundleForClass:EZRValueSnapshotView.class] loadNibNamed:@"EZRValueSnapshotView" owner:self options:nil];
        [self addSubview:self.contentView];
        [super setBackgroundColor:[UIColor clearColor]];
        self.valueLabel.layer.cornerRadius = CGRectGetWidth(self.valueLabel.frame) / 2;
        self.valueLabel.layer.borderColor = [UIColor blackColor].CGColor;
        self.valueLabel.layer.backgroundColor = [UIColor redColor].CGColor;
        self.valueLabel.layer.borderWidth = 1.0;
    }
    return self;
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(64, 78);
}

- (void)setSnapshotColor:(UIColor *)snapshotColor {
    _snapshotColor = snapshotColor;
    self.valueLabel.layer.backgroundColor = snapshotColor.CGColor;
}

- (void)setTime:(NSDate *)time {
    _time = time;
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"HH:mm:ss";
    self.timeLabel.text = [formatter stringFromDate:time];
}

- (void)setValue:(NSString *)value {
    self.valueLabel.text = value;
}

- (NSString *)value {
    return self.valueLabel.text;
}

//- (void)addNewValue:(NSString *)value {
//    if (self.snapShotsView.count ==0) {
//        self.firstTime = time(NULL);
//    }
//    if (self.snapShotsView.count > 0) {
//        [self.delays addObject:@(time(NULL))];
//    }
//    if (self.snapShotsView.count > EZRMaxValueSnapShots) {
//        [self.snapShotsView removeLastObject];
//        [self.delays removeLastObject];
//    }
//    
//    
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
//    [button setTitle:value forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor redColor];
//    button.alpha = 0.8;
//    button.layer.masksToBounds = YES;
//    button.layer.borderColor = [UIColor blackColor].CGColor;
//    button.layer.borderWidth = 1.f;
//    button.layer.cornerRadius = 22;
//    
//    [self.snapShotsView addObject:button];
//    
//    [self drawNodes];
//}
//
//- (void)drawNodes {
//    [self.snapShotsView makeObjectsPerformSelector:@selector(removeFromSuperview)];
//    for (UIView *v in self.snapShotsView) {
//        [self addSubview:v];
//    }
//    if (self.snapShotsView.count > 0) {
//        self.snapShotsView[0].frame = CGRectMake(22, 62, 44,44);
//    }
//    CGFloat totalWidth = 300;
//    if (self.snapShotsView.count > 10) {
//        totalWidth = 600;
//    }
//    for (int i = 1; i < self.snapShotsView.count ; i++) {
//        CGFloat x = 44;
//        if (i > 1) {
//            CGFloat ration = (self.delays[i-1].longValue - self.firstTime ) * 1.0/(self.delays.lastObject.longValue - self.firstTime);
//            x += (totalWidth-44) * ration;
//        }
//        self.snapShotsView[i].frame = CGRectMake(x, 62, 44,44);
//        [self.contentView addSubview:self.snapShotsView[i]];
//    }
//}

@end  
