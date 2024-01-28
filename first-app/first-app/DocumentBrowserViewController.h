//
//  DocumentBrowserViewController.h
//  first-app
//
//  Created by liuwenjin on 2024/1/27.
//

#import <UIKit/UIKit.h>

@interface DocumentBrowserViewController : UIDocumentBrowserViewController

- (void)presentDocumentAtURL:(NSURL *)documentURL;

@end
