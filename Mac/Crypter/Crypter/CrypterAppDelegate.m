//
//  CrypterAppDelegate.m
//  Crypter
//
//  Created by Vladislav on 04.08.11.
//  Copyright 2011 Tigr@Soft. All rights reserved.
//

#import "CrypterAppDelegate.h"
#import "EncryptionModule.h"
@implementation CrypterAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)encrypt:(id)sender {
    EncryptionModule *crypt = [[EncryptionModule alloc]init];

    [Textfld setStringValue:[crypt encryptString:[Textfld stringValue] withOffset:[slider intValue]]];
}

- (IBAction)decrypt:(id)sender {
    EncryptionModule *crypt = [[EncryptionModule alloc]init];
    
    [Textfld setStringValue:[crypt decryptString:[Textfld stringValue] withOffset:[slider intValue]]];
}

- (IBAction)freshOffset:(id)sender {
    [OffsetText setStringValue:[NSString stringWithFormat:@"Offset: %i",[slider intValue]]];
}
@end
