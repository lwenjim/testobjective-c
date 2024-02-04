//
//  main.m
//  first-app-2
//
//  Created by liuwenjin on 2024/1/27.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Computer.h"
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        Computer *cpt = [[Computer alloc] init];
        [cpt run];
        [cpt run:@"sth"];
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
