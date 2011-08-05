//
//  MainViewController.h
//  BasicCrypter
//
//  Created by Vladislav on 03.08.11.
//  Copyright 2011 Tigr@Soft. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {

    IBOutlet UISlider *offsetSlider;
    IBOutlet UITextView *textView;
}


- (IBAction)showInfo:(id)sender;
- (IBAction)encrypt:(id)sender;
- (IBAction)decrypt:(id)sender;
- (IBAction)ololo:(id)sender;

@end
