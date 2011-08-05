//
//  BasicCrypterAppDelegate.h
//  BasicCrypter
//
//  Created by Vladislav on 03.08.11.
//  Copyright 2011 Tigr@Soft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface BasicCrypterAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end
