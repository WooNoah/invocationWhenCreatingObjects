//
//  FirstViewController.m
//  testInit
//
//  Created by 吴迪 on 16/12/24.
//  Copyright © 2016年 吴迪. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstView.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (instancetype)init {
    NSLog(@"FirstViewController init before super");
    self  = [super init];
    NSLog(@"FirstViewC÷ontroller init after super");
    if (self) {
        NSLog(@"FirstViewController init in （）");
        
        FirstView *view = [[FirstView alloc]initWithFrame:CGRectMake(0, 0, 10, 10)];
        
        FirstView *view2 = [[FirstView alloc]init];
        
    }
    return self;
}





+ (void)initialize {
    NSLog(@"FirstViewController initialize");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
