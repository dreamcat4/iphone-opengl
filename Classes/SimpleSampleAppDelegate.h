//
//  SimpleSampleAppDelegate.h
//  SimpleSample
//
//  Created by nacho on 27/08/09.
//  Copyright Ignacio Sanchez Gines 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface SimpleSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EAGLView *glView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end

