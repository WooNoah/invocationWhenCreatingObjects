//
//  FirstView.m
//  testInit
//
//  Created by 吴迪 on 16/12/24.
//  Copyright © 2016年 吴迪. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"drawing rect");
    for (int i = 1; i <= 100; i++) {
        NSLog(@"%ld",(long)i);
    }
    
}

+ (instancetype)alloc {
    NSLog(@"FirstView alloc");
    
    return [super alloc];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    NSLog(@"FirstView allocWithZone");
    
    return [super allocWithZone:zone];
}

- (instancetype)init {
    NSLog(@"FirstView init before super init");
    if (self = [super init]) {
        NSLog(@"FirstView init in ()");
        
        [self setNeedsDisplay];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"FirstView initWithFrame");
    if (self = [super initWithFrame:frame]) {
        NSLog(@"FirstView initWithFrame in ()");
    }
    return self;
}

+ (void)initialize {
    NSLog(@"initialize");
}

@end
