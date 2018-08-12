//
//  EZRTimeLineView.m
//  EasyReact_Example
//
//  Created by nero on 2018/7/30.
//  Copyright © 2018年 EasyReact. All rights reserved.
//

#import "EZRTimeLineView.h"
#import <objc/runtime.h>
#import <Masonry/Masonry.h>

@interface EZRTimeLineView ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (strong, nonatomic) IBOutlet UIView *contentView;


@end

@implementation EZRTimeLineView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle bundleForClass:EZRTimeLineView.class] loadNibNamed:@"EZRTimeLineView" owner:self options:nil];
        [self addSubview:self.contentView];
        self.contentView.frame = self.bounds;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [[NSBundle bundleForClass:EZRTimeLineView.class] loadNibNamed:@"EZRTimeLineView" owner:self options:nil];
        [self addSubview:self.contentView];
        self.contentView.frame = self.bounds;
    }
    return self;
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(UIScreen.mainScreen.bounds.size.width, 100);
}

- (void)setName:(NSString *)name {
    self.nameLabel.text = name;
}

- (NSString *)name {
    return self.nameLabel.text;
}

- (CGRect)lineFrame {
    return self.lineView.frame;
}

@end

