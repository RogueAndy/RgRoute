//
//  ScRouter.h
//  ScRouteDemo
//
//  Created by rogue on 2019/6/13.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 外部使用方法如下:
 UIViewController *vc = [XhlRouter xhl_pushWithTargetAction:@"Test://doSth" params:@{@"title": @"重庆新闻"}];
 [self.navigationController pushViewController:vc animated:YES];
 
 文件后缀名，Test：代表文件的后缀名，该文件名称为 Target_文件名，例如 Target_Test.h
 
 方法后缀名，doSth：代表你需要调用的方法,这个方法写在 Target_Test文件里，而且方法名称的写法是Action_方法名，例如 - (void)Action_doSth:(NSDictionary *)params {}
 
 params：参数，字典类型，可以传入block块、自定义model等等，但是必须要在该方法内部自己解析
 */

NS_ASSUME_NONNULL_BEGIN

@interface ScRouter : NSObject

+ (UIViewController *)sc_pushWithTargetAction:(NSString *)targetAction params:(nullable NSDictionary *)params;

+ (UIViewController *)sc_pushWithTargetAction:(NSString *)targetAction params:(nullable NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

@end

NS_ASSUME_NONNULL_END
