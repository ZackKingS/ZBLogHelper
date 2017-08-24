//
//  ViewController.m
//  ZBLogHelper
//
//  Created by 柏超曾 on 2017/8/24.
//  Copyright © 2017年 柏超曾. All rights reserved.
//

#import "ViewController.h"
#import "ZBLogHelper.h"
#define location   [NSString stringWithFormat:@"[ %s :%d行]", [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__]



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *srt = @"hello";
    
    [ZBLogHelper writeIn:srt Location: location];
    
    
    NSString *srtrrrr = @"bonjour";
    
    
    
    [ZBLogHelper writeIn:srtrrrr Location: location];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
 
    
    
    NSString *srt = @"xxxxx";
    
    [ZBLogHelper writeIn:srt Location: location];
    
    
    NSString *srtrrrr = @"0000";
    
    
    
    [ZBLogHelper writeIn:srtrrrr Location: location];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
