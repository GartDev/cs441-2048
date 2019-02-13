//
//  GameViewController.m
//  neo2048
//
//  Created by Garrett Vanderlinden on 2/6/19.
//  Copyright © 2019 Garrett Vanderlinden. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController
-(void)initialize{
    for(UILabel *tile in self.gameArray){
        tile.text = @"0";
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];

    // Load the SKScene from 'GameScene.sks'
    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
    
    // Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    SKView *skView = (SKView *)self.view;
    
    // Present the scene
    [skView presentScene:scene];
    
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}
- (IBAction)handleSwipeU:(id)sender {
    for(int i = 4; i<=15; i++){
        UILabel *tile = [_gameArray objectAtIndex: i];
        
    }
}
- (IBAction)handleSwipeL:(id)sender {
}
- (IBAction)handleSwipeR:(id)sender {
}
- (IBAction)handleSwipeD:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
