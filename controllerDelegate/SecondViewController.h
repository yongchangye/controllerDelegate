//
//  SecondViewController.h
//  controllerDelegate
//
//  Created by 叶永长 on 11/3/15.
//  Copyright © 2015 YYC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassValueDelegate <NSObject>

-(void)passValue:(NSString *)str;

@end

@interface SecondViewController : UIViewController
@property (nonatomic,assign) id<PassValueDelegate>delegate;

@end
