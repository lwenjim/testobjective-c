//
//  ViewController.m
//  first-app-2
//
//  Created by liuwenjin on 2024/1/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    NSLog(@"%f", [UIScreen mainScreen].bounds.size.width);
    NSLog(@"%f", [UIScreen mainScreen].bounds.size.width);
    
    button.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-40)/2, ([UIScreen mainScreen].bounds.size.height-40)/2, 40, 40);
    button.backgroundColor=[UIColor whiteColor];
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:[UIImage imageNamed:@"1706869120285.jpg"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}
-(void)changeColor{
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}
@end
