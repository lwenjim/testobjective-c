//
//  Student.m
//  helloworld
//
//  Created by liuwenjin on 2024/1/27.
//

#import "Student.h"

@implementation Student

static int age = 123;
static NSString* name = @"abc";

@synthesize name = name, age = age;
- (void)Eat {
    NSLog(@"Age:%d, name:%@", age, name);
}
+ (void)Eat2 {
    NSLog(@"Age:%d, name:%@", age, name);
}
@end

