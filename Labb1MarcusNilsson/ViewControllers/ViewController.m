//
//  ViewController.m
//  Labb1MarcusNilsson
//
//  Created by Marcus Nilsson on 2020-01-10.
//  Copyright © 2020 Marcus Nilsson. All rights reserved.
//

#import "ViewController.h"
#import "GameViewController.h"

@interface ViewController ()
@property(strong, nonatomic, readonly) UIColor *blackColor;


@end

@implementation ViewController

GameViewController *gvc;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)darkmodeOn:(id)sender {
    
    NSUserDefaults *darkMode = [NSUserDefaults standardUserDefaults];
    if(_DarkMode.isOn){
        [darkMode setBool:YES forKey:@"Background"];
        NSLog(@"swith is on");
        self.view.backgroundColor = [UIColor blackColor];
        gvc.view.backgroundColor = [UIColor blackColor];
        
        
    }
    else{
        [darkMode setBool:NO forKey:@"Background"];
        self.view.backgroundColor = [UIColor tertiarySystemGroupedBackgroundColor];
    }
}


@end
