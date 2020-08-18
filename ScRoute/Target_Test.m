//
//  Target_Test.m
//  XhlRouteDemo
//
//  Created by rogue on 2019/3/5.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "Target_Test.h"

@implementation Target_Test

- (UIViewController *)controllerWithName:(NSString *)name
                                  sbName:(NSString *)sb {
    if (!name) {return nil;}
    if (sb) {
        // 1.先读取SB
        UIStoryboard *userInfoSB = [UIStoryboard storyboardWithName:sb
                                                             bundle:[NSBundle mainBundle]];
        UIViewController *vc = [userInfoSB instantiateViewControllerWithIdentifier:name];//
        vc.hidesBottomBarWhenPushed = YES;
        return vc;
    }
    
    // 2. 不存在，则根据name创建一个
    UIViewController *vc = (UIViewController *)[[NSClassFromString(name) alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    return vc;
}

- (UIViewController *)Action_doSth:(NSDictionary *)params{
    // 这里的 UIViewController可以是自定义对象
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor orangeColor];
    vc.title = params[@"title"];
    vc.hidesBottomBarWhenPushed = true;
    // 可以再这里设置各种自定义对象的属性
    return vc;
}

@end
