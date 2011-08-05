//
//  MainViewController.m
//  BasicCrypter
//
//  Created by Vladislav on 03.08.11.
//  Copyright 2011 Tigr@Soft. All rights reserved.
//

#import "MainViewController.h"
#import "EncryptionModule.h"
@implementation MainViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{

    [super viewDidLoad];
}


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
    controller.delegate = self;
    
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
    
    [controller release];
}

- (IBAction)encrypt:(id)sender {
    EncryptionModule *crypt = [[EncryptionModule alloc]init];
    [[[UIAlertView alloc]initWithTitle:@"Result" message:[crypt encryptString:[textView text] withOffset:[offsetSlider value]] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
}

- (IBAction)decrypt:(id)sender {
    EncryptionModule *crypt = [[EncryptionModule alloc]init];
    [[[UIAlertView alloc]initWithTitle:@"Result" message:[crypt decryptString:[textView text] withOffset:[offsetSlider value]] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
}

- (IBAction)ololo:(id)sender {
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations.
    return YES;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [offsetSlider release];
    offsetSlider = nil;
    [textView release];
    textView = nil;
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc
{
    [offsetSlider release];
    [textView release];
    [super dealloc];
}

@end
