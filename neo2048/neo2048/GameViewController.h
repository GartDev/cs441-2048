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
@property (strong, nonatomic) IBOutlet UILabel *gamewin;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *gameArray;
@property (strong, nonatomic) IBOutlet UILabel *Sqr00;
@property (strong, nonatomic) IBOutlet UILabel *Sqr10;
@property (strong, nonatomic) IBOutlet UILabel *Sqr20;
@property (strong, nonatomic) IBOutlet UILabel *Sqr30;
@property (strong, nonatomic) IBOutlet UILabel *Sqr01;
@property (strong, nonatomic) IBOutlet UILabel *Sqr11;
@property (strong, nonatomic) IBOutlet UILabel *Sqr21;
@property (strong, nonatomic) IBOutlet UILabel *Sqr31;
@property (strong, nonatomic) IBOutlet UILabel *Sqr02;
@property (strong, nonatomic) IBOutlet UILabel *Sqr12;
@property (strong, nonatomic) IBOutlet UILabel *Sqr22;
@property (strong, nonatomic) IBOutlet UILabel *Sqr32;
@property (strong, nonatomic) IBOutlet UILabel *Sqr03;
@property (strong, nonatomic) IBOutlet UILabel *Sqr13;
@property (strong, nonatomic) IBOutlet UILabel *Sqr23;
@property (strong, nonatomic) IBOutlet UILabel *Sqr33;
@property (strong, nonatomic) IBOutlet UIButton *ubutton;
@property (strong, nonatomic) IBOutlet UIButton *dbutton;
@property (strong, nonatomic) IBOutlet UIButton *rbutton;
@property (strong, nonatomic) IBOutlet UIButton *lbutton;






@end
