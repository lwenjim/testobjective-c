//
//  Student.h
//  helloworld
//
//  Created by liuwenjin on 2024/1/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    @public 
    NSString* name;
    int age;
}

@property  NSString* name;
@property  int age;

-(void) Eat;
@end

NS_ASSUME_NONNULL_END
