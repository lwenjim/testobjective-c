//
//  main.m
//  helloworld
//
//  Created by liuwenjin on 2024/1/27.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Person : NSObject{
    @public NSString *name;
}
@property NSString *name;
@end

@implementation Person

@synthesize name;

@end

int main(int argc, const char * argv[]) {
    NSLog(@"Hello, World!2");
    @autoreleasepool {
        NSLog(@"Hello, World!");
        Student *stu = [Student new];
        stu.name = @"abc";
        stu.age = 123;
        [stu Eat];
    }

    CGFloat f = 1.12;
    NSInteger i = 123;
    NSLog(@"CGFloat:%f, NSInteger:%long", f, i);
    
    // 循环
    int a;
    for (a = 10; a <20; a = a + 1) {
        NSLog(@"%d", a);
    }
    
    // 数组
    NSArray* arr = @[@"jack", @"tom", @"merry"];
    NSArray* arr1 = [[NSArray alloc] initWithArray:arr];
    NSArray* arr2 = [NSArray arrayWithArray:arr];
    NSArray* arr3 = [[NSArray alloc] initWithObjects:@"jack", @"tom", nil];
    NSArray* arr4 = [NSArray arrayWithObjects:@"jack", @"tom", nil];
    NSLog(@"%ld", arr.count);
    NSUInteger index = [arr1 indexOfObject:@"tom"];
    BOOL result = [arr2 containsObject:@"jack"];
    NSLog(@"%ul, %b", (unsigned int)index, result);
    [arr3 objectAtIndex:0];
    NSLog(@"%@", arr4[0]);
    [arr1 firstObject];
    [arr1 lastObject];
    
    // 动态数组
    NSMutableArray* ar = [NSMutableArray arrayWithCapacity:0];
    [ar addObject:@"shanghai"];//以元素形式添加
    [ar addObjectsFromArray:@[@"cq", @"cd"]];
    
    // 向数组中插入元素
    [ar insertObject:@"bj" atIndex:1];
    
    // 交换数组中的数据
    [ar exchangeObjectAtIndex:0 withObjectAtIndex:1];
    
    // 删除数组中的元素
    [ar removeObject:@"xianggang"];//删除指定元素
    [ar removeObject:@"bj"];// 删除指定元素
    [ar removeObjectAtIndex:1];// 删除指定索引的元素
    [ar removeAllObjects];// 删除所有元素
    
    // 两个对象的比较
    NSString *ob1 = @"Jact";
    NSString *ob2 = @"jacten";
    NSLog(@"%@, %@", ob1, ob2);
    
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    p1.name = @"Jact";
    p2.name = @"Jact";
    
    NSArray *pArray = @[p1];
    p1.name = @"Jack";
    
    NSLog(@"%@", ((Person *)pArray[0]).name);
    if ([p1 isEqual:pArray[0]]) {
        NSLog(@"是同一个对象");
    }else{
        NSLog(@"不是同一个对象");
    }
    
    NSArray *p = @[@"abc"];
    NSLog(@"%lu", (unsigned long)p.count);
    
    // 字典
    NSDictionary *dictionay = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    id value = [dictionay objectForKey:@"key1"];
    NSLog(@"key1 => %@", value);
    NSArray *keys = [dictionay allKeys];
    for (id obj in keys) {
        NSLog(@"%@ => %@", obj, [dictionay objectForKey:obj]);
    }
    
    // 可变字典
    NSMutableDictionary *mutDictionary = [NSMutableDictionary dictionaryWithCapacity:3];
    [mutDictionary setObject:@"value1" forKey:@"key1"];
    [mutDictionary setObject:@"value2" forKey:@"key2"];
    [mutDictionary setObject:@"value3" forKey:@"key3"];
    [mutDictionary setObject:@"value4" forKey:@"key4"];
    [mutDictionary removeObjectForKey:@"key4"];
    
    // Set 集合
    NSSet *set1 = [[NSSet alloc] initWithObjects:@"aa", @"bb", @"cc", @"dd", nil];
    NSSet *set2 = [NSSet setWithObjects:@"AA", @"BB", @"CC", nil];
    // 获取集合中元素的个数
    int count = (int) [set1 count];
    NSLog(@"set1 里面的元素个数为: %d", count);
    
    // 遍历集合: 把set集合转换为数组然后进行遍历
    NSArray *setToArray = [set2 allObjects];
    NSLog(@"%@", setToArray);
    
    // 随机获取set中元素
    id element = [set1 anyObject];
    NSLog(@"随机获取其中的值%@", element);
    
    // 比较两个Set是否相等
    if ([set1 isEqualToSet:set2] == NO) {
        NSLog(@"set1 != set2");
    }
    
    //查看一个元素是否在一个set中
    if ([set1 member:@"aa"]) {
        NSLog(@"aa 在set1中");
    }
    
    // 可变Set
    // 遍历初始化函数分配大小
    NSMutableSet *mutableSet1 = [[NSMutableSet alloc] initWithCapacity:3];
//    NSMutableSet *mutableSet2 = [NSMutableSet setWithCapacity:3];
    
    //添加元素
    [mutableSet1 addObject:@"aaa"];
    [mutableSet1 addObject:@"BBB"];
    [mutableSet1 addObject:@"bbb"];
    
    //删除元素
    [mutableSet1 removeObject:@"BBB"];
    
    //遍历Set
    NSArray *setArray = [mutableSet1 allObjects];
    NSLog(@"%@", setArray);
    
    NSNumber *c = [[NSNumber alloc] initWithChar:'a'];
    NSNumber *ii =  [[NSNumber alloc] initWithInt:1];
    NSNumber *ff = [[NSNumber alloc] initWithFloat:0.1];
    NSNumber *b =  [[NSNumber alloc] initWithBool:true];
    NSLog(@"%c, %d, %f, %b", c.charValue, ii.intValue, ff.floatValue, b.boolValue);
    
    
    NSNumber *c1 = [NSNumber numberWithChar:'a'];
    NSNumber *ii2 = [NSNumber numberWithInt:1];
    NSNumber *ff2 = [NSNumber numberWithFloat:0.1];
    NSNumber *b2 =    [NSNumber numberWithBool:true];
    //    NSNull *n = (NSNull *)NULL;
    NSLog(@"%c, %d, %f, %b", c1.charValue, ii2.intValue, ff2.floatValue, b2.boolValue);

    // see https://www.cnblogs.com/ludashi/p/3893093.html
    return 0;
}


