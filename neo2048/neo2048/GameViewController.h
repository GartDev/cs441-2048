//
//  GameViewController.h
//  neo2048
//
//  Created by Garrett Vanderlinden on 2/6/19.
//  Copyright © 2019 Garrett Vanderlinden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>

@interface GameViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *sqr00;
@property (strong, nonatomic) IBOutlet UILabel *sqr10;
@property (strong, nonatomic) IBOutlet UILabel *sqr20;
@property (strong, nonatomic) IBOutlet UILabel *sqr30;
@property (strong, nonatomic) IBOutlet UILabel *sqr01;
@property (strong, nonatomic) IBOutlet UILabel *sqr11;
@property (strong, nonatomic) IBOutlet UILabel *sqr21;
@property (strong, nonatomic) IBOutlet UILabel *sqr31;
@property (strong, nonatomic) IBOutlet UILabel *sqr02;
@property (strong, nonatomic) IBOutlet UILabel *sqr12;
@property (strong, nonatomic) IBOutlet UILabel *sqr22;
@property (strong, nonatomic) IBOutlet UILabel *sqr32;
@property (strong, nonatomic) IBOutlet UILabel *sqr03;
@property (strong, nonatomic) IBOutlet UILabel *sqr13;
@property (strong, nonatomic) IBOutlet UILabel *sqr23;
@property (strong, nonatomic) IBOutlet UILabel *sqr33;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swiper;

@end
