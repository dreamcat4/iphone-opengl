//
//  SimpleSampleAppDelegate.m
//  SimpleSample
//
//  Created by nacho on 27/08/09.
//  Copyright Ignacio Sanchez Gines 2009. All rights reserved.
//

#import "SimpleSampleAppDelegate.h"
#import "EAGLView.h"

@implementation SimpleSampleAppDelegate

@synthesize window;
@synthesize glView;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationWillResignActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 5.0;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 60.0;
}


- (void)dealloc {
	[window release];
	[glView release];
	[super dealloc];
}

@end
