//
//  AboutMe.h
//  Labb1MarcusNilsson
//
//  Created by Marcus Nilsson on 2020-01-14.
//  Copyright © 2020 Marcus Nilsson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboutMe : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *headline;

@property (weak, nonatomic) IBOutlet UITextView *AboutMeText;

// property IBinspectible
@end

NS_ASSUME_NONNULL_END
