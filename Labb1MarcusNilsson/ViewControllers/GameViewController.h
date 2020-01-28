//
//  GameViewController.h
//  Labb1MarcusNilsson
//
//  Created by Marcus Nilsson on 2020-01-15.
//  Copyright © 2020 Marcus Nilsson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameViewController : UIViewController <UITextFieldDelegate>{
    int randomNum;
    
    IBOutlet UITextField *guessingfield;
    
}




@end

NS_ASSUME_NONNULL_END
