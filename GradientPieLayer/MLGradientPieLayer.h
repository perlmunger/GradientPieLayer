//
//  MLGradientPieLayer.h
//  GradientPieLayer
//
//  Created by Matt Long on 12/16/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface MLGradientPieLayer : CAGradientLayer

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

- (instancetype)initWithRect:(CGRect)rect;

- (void)setStart:(CGFloat)start;
- (void)setEnd:(CGFloat)end;

@end
