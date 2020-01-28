//
//  GameViewController.m
//  Labb1MarcusNilsson
//
//  Created by Marcus Nilsson on 2020-01-15.
//  Copyright © 2020 Marcus Nilsson. All rights reserved.
//

#import "GameViewController.h"
#import "ViewController.h"

@interface GameViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UILabel *headLineGame;

@end

@implementation GameViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    guessingfield.delegate = self;
    
    [self darkMode];
    [self setRandom];
    
    // Do any additional setup after loading the view.
}

-(void)darkMode{
    NSUserDefaults *defults = [NSUserDefaults standardUserDefaults];
    Boolean bg = [defults integerForKey:@"Background"];
    if(bg == YES){
        self.view.backgroundColor = [UIColor blackColor];
        _lable.textColor = [UIColor whiteColor];
        _headLineGame.textColor = [UIColor whiteColor];
    }
    else{
       self.view.backgroundColor = [UIColor systemYellowColor];
    }
    
}

- (IBAction)guessButtonPressed:(id)sender {
    if([guessingfield.text intValue] == randomNum){
        _lable.text = [NSString stringWithFormat:@"Du gissade rätt!"];
        [self setRandom];
    }
    else if([guessingfield.text intValue] < randomNum){
        _lable.text = [NSString stringWithFormat:@"Du gissade för lågt, prova igen"];
        [self setRandom];
    }
    else{
        _lable.text = [NSString stringWithFormat:@"Du gissade för högt, prova igen"];
    }
 
        
}

- (void)setRandom {
 
 randomNum = arc4random() % 100;
    
}
- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
    //guessingfield.resignFirstResponder;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
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
