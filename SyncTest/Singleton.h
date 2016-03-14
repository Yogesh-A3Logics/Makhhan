//
//  Singleton.h
//  SyncTest
//
//  Created by Yogesh Singh Rana on 14/03/16.
//  Copyright © 2016 Yogesh Singh Rana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface Singleton : NSObject
+ (id)sharedManager;
-(void)myMethod:(NSString *)message;

@end
