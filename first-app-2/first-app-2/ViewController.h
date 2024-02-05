//
//  ViewController.h
//  first-app-2
//
//  Created by liuwenjin on 2024/1/27.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate>{
    UILabel* _placeholderLabel;
}

@property (nonatomic, strong) UITextView * textView;
@property (nonatomic, strong) UITextField * textField;

@end

