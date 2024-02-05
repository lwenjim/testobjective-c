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
    self.view.backgroundColor = [UIColor purpleColor];
    self.navigationItem.title = @"小工具";
    
    NSLog(@"%f",[UIScreen mainScreen].bounds.size.width);
    NSLog(@"%f",[UIScreen mainScreen].bounds.size.height);
    
    int screenWidth = [UIScreen mainScreen].bounds.size.width;
    int screenHeight = [UIScreen mainScreen].bounds.size.height;
    int textViewWidth = [UIScreen mainScreen].bounds.size.width;
    int textViewHeight = [UIScreen mainScreen].bounds.size.height-200;
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake((screenWidth - textViewWidth)/2, (screenHeight - textViewHeight)/2, textViewWidth, textViewHeight)];
    [self.view addSubview:self.textView];
    [self.textView scrollRangeToVisible:NSMakeRange([self.textView.text length] - 1, 1)];
    self.textView.delegate = self;
    self.textView.returnKeyType = UIReturnKeyDefault;
    self.textView.keyboardType = UIKeyboardTypeDefault;
    self.textView.scrollEnabled = YES;
    self.textView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.textView.textAlignment = NSTextAlignmentLeft;
    self.textView.textColor = [UIColor blueColor];
    self.textView.font = [UIFont systemFontOfSize:18.0f];
    self.textView.editable = NO;
    self.textView.layer.cornerRadius = 6.0f;
    self.textView.layer.borderWidth=2;
    
    self.textView.layer.borderColor = [[UIColor colorWithRed:200.0/255 green:50/255 blue:10/255 alpha:1] CGColor];
    
    _placeholderLabel  = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, CGRectGetWidth(self.textView.frame), 20)];
    _placeholderLabel.backgroundColor = [UIColor clearColor];
    _placeholderLabel.textColor = [UIColor grayColor];
    _placeholderLabel.text = @"请输入内容";
    _placeholderLabel.font = self.textView.font;
    [self.textView addSubview:_placeholderLabel];
    [_placeholderLabel setNumberOfLines:0];
    
    
    
   int textFieldWidth =textViewWidth;
   int textFieldHeight = 40;
   self.textField = [[UITextField alloc] initWithFrame:CGRectMake((screenWidth-textFieldWidth)/2, (screenHeight - textViewHeight)/2 - textFieldHeight -5, textFieldWidth, textFieldHeight)];
   self.textField.borderStyle = UITextBorderStyleRoundedRect;
   self.textField.placeholder = @"请输入文字";
   self.textField.text = @"https://www.baidu.com";
    [self.view addSubview:self.textField];
    
    int buttonWidth =120;
    int buttonHeight = 40;
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    [button setTitle:@"获取网址内容" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    button.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-buttonWidth)/2, (screenHeight - buttonHeight)/2 + (textViewHeight + buttonHeight)/2 + 5, buttonWidth, buttonHeight);
    button.backgroundColor=[UIColor whiteColor];
}
-(BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(nonnull NSString *)string{
    if (string.length > 0 ) {
        if ([string characterAtIndex:0] < '0' || [string characterAtIndex:'9']) {
            NSLog(@"请输入数字");
            return NO;
        }
        if (textField.text.length + string.length > 11) {
            NSLog(@"超过11位");
            return NO;
        }
    }
    return YES;
}
-(void)leaveEditMode{
    [self.textView resignFirstResponder];
}
-(void)changeColor{
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}
-(BOOL)textViewShouldBeginEditing:(UITextView*)textView{
    NSLog(@"将要开始编辑");
    return YES;
}
-(BOOL)textViewShouldEndEditing:(UITextView*)textView{
    NSLog(@"将要结束编辑?");
    return YES;
}
-(void)textViewDidBeginEditing:(UITextView*)textView{
    NSLog(@"开始编辑");
    _placeholderLabel.text =@"";
}
-(void)textViewDidEndEditing:(UITextView*)textView{
    NSLog(@"结束编辑");
    if (self.textView.text.length == 0 ) {
        _placeholderLabel.text = @"请输入内容";
    }else{
        _placeholderLabel.text = @"";
    }
}
-(void)textViewShouldChangeTextInRange:(UITextView*) textView{
    NSLog(@"将要改变内容");
}
-(BOOL) textView:(UITextView*) textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text{
    if ([text isEqual:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }else{
        return  YES;
    }
}
-(void)textViewDitChange:(UITextView*) textView{
    NSLog(@"内容完成改变");
}
-(void)textViewDidChangeSelection:(UITextView *)textView{
    NSLog(@"内容被选中");
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}
-(void)btnClick:(UIButton*)sender{
    [self.textView scrollRangeToVisible:NSMakeRange([self.textView.text length] -1, 1)];
    [self.view endEditing:YES];
    _placeholderLabel.text = @"";
    NSURLSession* session = [NSURLSession sharedSession];
    NSURL* url = [NSURL URLWithString:self.textField.text];
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url];
    NSURLSessionTask* dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error);
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            self.textView.text = responseString;
        });
        
    }];
    [dataTask resume];
}
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    if (action == @selector(changeColor)){
        if (self.textView.selectedRange.length>0) {
            return YES;
        }
    }
    return NO;
}
-(NSString *)str:(NSString *)str value1:(NSString *)value1 value2:(NSString *)value2{
    int i;
    int j;
    NSRange range1 = [str rangeOfString:value1];
    if(range1.length>0){
        NSString *result1 = NSStringFromRange(range1);
        i = [self indexByValue:result1];
        i = i+(int)[value1 length];
    }else {
        return @"";
    }
    NSString *str1 = [str substringFromIndex:i];
    NSRange range2 = [str1 rangeOfString:value2];
    if(range2.length>0){
        NSString *result2 = NSStringFromRange(range2);
        j = [self indexByValue:result2];
    }else {
        return @"";
    }
    NSString *str2 = [str1 substringToIndex:j];
    return str2;
}
-(int)indexByValue:(NSString *)str{
    NSMutableString *value = [[NSMutableString alloc] initWithFormat:@""];
    NSString *colum2 = @"";
    int j = 0;
    for(int i=1;i<[str length];i++){
        NSString *colum1 = [str substringFromIndex:i];
        [value appendString:colum2];
        colum2 = [colum1 substringToIndex:1];
        if([colum2 isEqualToString:@","]){
            j = [value intValue];
            break;
        }
    }
    return j;
}
@end
