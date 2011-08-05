//
//  CrypterAppDelegate.h
//  Crypter
//
//  Created by Vladislav on 04.08.11.
//  Copyright 2011 Tigr@Soft. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CrypterAppDelegate : NSObject <NSApplicationDelegate,NSControlTextEditingDelegate> {
    IBOutlet NSTextField *Textfld;
@private
    IBOutlet NSSlider *slider;
    IBOutlet NSTextField *OffsetText;
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;
- (IBAction)encrypt:(id)sender;
- (IBAction)decrypt:(id)sender;
- (IBAction)freshOffset:(id)sender;

@end
