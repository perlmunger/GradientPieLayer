//
//  MLViewController.m
//  GradientPieLayer
//
//  Created by Matt Long on 12/16/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import "MLViewController.h"
#import "MLGradientPieLayer.h"

#define kPosition  CGPointMake(300.0f, 300.0f)
#define kRect      CGRectMake(0.0f, 0.0f, 500.0f, 500.0f)

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addSomePieSlices];
}

- (void)addSomePieSlices
{
    MLGradientPieLayer *pie = [[MLGradientPieLayer alloc] initWithRect:kRect];
    pie.position = kPosition;
    
    [self.view.layer addSublayer:pie];

    pie = [[MLGradientPieLayer alloc] initWithRect:kRect];
    pie.colors = @[(id)[[UIColor orangeColor] CGColor], (id)[[UIColor yellowColor] CGColor]];
    pie.position = kPosition;
    [pie setStart:0.0f];
    [pie setEnd:0.15f];
    
    [self.view.layer addSublayer:pie];
    
    pie = [[MLGradientPieLayer alloc] initWithRect:kRect];
    pie.colors = @[(id)[[UIColor purpleColor] CGColor], (id)[[UIColor blueColor] CGColor]];
    pie.position = kPosition;
    [pie setStart:0.15f];
    [pie setEnd:0.35f];
    
    [self.view.layer addSublayer:pie];

    pie = [[MLGradientPieLayer alloc] initWithRect:kRect];
    pie.colors = @[(id)[[UIColor greenColor] CGColor], (id)[[UIColor purpleColor] CGColor]];
    pie.position = kPosition;
    [pie setStart:0.35f];
    [pie setEnd:0.55f];
    
    [self.view.layer addSublayer:pie];

    pie = [[MLGradientPieLayer alloc] initWithRect:kRect];
    pie.colors = @[(id)[[UIColor brownColor] CGColor], (id)[[UIColor magentaColor] CGColor]];
    pie.position = kPosition;
    [pie setStart:0.55f];
    [pie setEnd:0.85f];
    
    [self.view.layer addSublayer:pie];
}

@end
