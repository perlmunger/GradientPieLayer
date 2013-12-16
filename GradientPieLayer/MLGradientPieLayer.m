//
//  MLGradientPieLayer.m
//  GradientPieLayer
//
//  Created by Matt Long on 12/16/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import "MLGradientPieLayer.h"

@interface MLGradientPieLayer ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation MLGradientPieLayer

- (instancetype)initWithRect:(CGRect)rect
{
    self = [super init];
    if (self) {
        self.colors = @[(id)[[UIColor darkGrayColor] CGColor], (id)[[UIColor lightGrayColor] CGColor]];
        self.startPoint = CGPointMake(0.0f, 0.5f);
        self.endPoint = CGPointMake(1.0f, 0.5f);
        
        self.bounds = rect;
        _shapeLayer = [CAShapeLayer layer];
        _shapeLayer.bounds = rect;
        _shapeLayer.position = CGPointMake(self.bounds.size.width/2.0f, self.bounds.size.height/2.0f);
        CGRect innerRect = CGRectInset(rect, self.bounds.size.width/4.0f,
                                       self.bounds.size.height/4.0f);
        
        UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:innerRect cornerRadius:self.bounds.size.width/2.0f];
        
        _shapeLayer.path = [bezierPath CGPath];
        _shapeLayer.fillColor = [[UIColor clearColor] CGColor];
        _shapeLayer.strokeColor = [[UIColor redColor] CGColor];
        _shapeLayer.lineWidth = self.bounds.size.width/2.0f;
        
//        [self addSublayer:_shapeLayer];
        self.mask = _shapeLayer;
    }
    return self;
}

- (void)setStart:(CGFloat)start
{
    _shapeLayer.strokeStart = start;
}

- (void)setEnd:(CGFloat)end
{
    _shapeLayer.strokeEnd = end;
}


@end
