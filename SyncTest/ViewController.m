//
//  ViewController.m
//  SyncTest
//
//  Created by Yogesh Singh Rana on 14/03/16.
//  Copyright © 2016 Yogesh Singh Rana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[Singleton sharedManager] myMethod:@"one"];
    [[Singleton sharedManager] myMethod:@"two"];
    [[Singleton sharedManager] myMethod:@"two"];

    [[Singleton sharedManager] myMethod:@"two"];

    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
