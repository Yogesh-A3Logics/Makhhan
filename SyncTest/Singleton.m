//
//  Singleton.m
//  SyncTest
//
//  Created by Yogesh Singh Rana on 14/03/16.
//  Copyright © 2016 Yogesh Singh Rana. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (id)sharedManager {
    static Singleton *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

-(void)myMethod:(NSString *)message
{
    
   // @synchronized(self) {
    
    
 //   NSLock *lock = [NSLock new];
  //  [lock lock];

    //dispatch_queue_t q = dispatch_queue_create("com.foo.samplequeue", NULL);

  //  dispatch_sync(q, ^{
    
    [self performAndWait:^(dispatch_semaphore_t semaphore) {
        
        

    }];
//        NSLog(@"%@",message);
//
//        sleep(4);
//        NSLog(@"%@",message);


   // });
    
    
 //   [lock unlock];
   // }
    
}


-(void)performAndWait:(void (^)(dispatch_semaphore_t semaphore))perform;
{
    for (int i = 0; i< 10000; i++) {
        NSLog(@"%@",i);
        
    }
}
@end
