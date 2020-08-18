//
//  ScRouter.m
//  ScRouteDemo
//
//  Created by rogue on 2019/6/13.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ScRouter.h"
#import "CTMediator.h"

@implementation ScRouter

+ (UIViewController *)sc_pushWithTargetAction:(NSString *)targetAction params:(nullable NSDictionary *)params{
    return [self sc_pushWithTargetAction:targetAction params:params shouldCacheTarget:YES];
}

+ (UIViewController *)sc_pushWithTargetAction:(NSString *)targetAction params:(nullable NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget{
    
    NSArray *arr = [targetAction componentsSeparatedByString:@"://"];
    if (arr.count<2) {
        return [UIViewController new];
    }
    return [[CTMediator sharedInstance] performTarget:arr.firstObject
                                               action:arr.lastObject
                                               params:params
                                    shouldCacheTarget:shouldCacheTarget];
    
}

@end
