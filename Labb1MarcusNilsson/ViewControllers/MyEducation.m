//
//  MyEducation.m
//  Labb1MarcusNilsson
//
//  Created by Marcus Nilsson on 2020-01-14.
//  Copyright © 2020 Marcus Nilsson. All rights reserved.
//

#import "MyEducation.h"

@interface MyEducation ()

@end

@implementation MyEducation

- (void)viewDidLoad {
    [super viewDidLoad];
    [self darkMode];
}
-(void)darkMode{
    NSUserDefaults *defults = [NSUserDefaults standardUserDefaults];
    Boolean bg = [defults integerForKey:@"Background"];
    if(bg == YES){
        self.view.backgroundColor = [UIColor blackColor];
        _educationText.textColor = [UIColor whiteColor];
    }
    else{
       self.view.backgroundColor = [UIColor systemBlueColor];
        _educationText.textColor = [UIColor blackColor];
        
    }
    
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
