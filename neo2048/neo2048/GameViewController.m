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
    for(UILabel *tile in self.gameArray){
        tile.text = @"2";
    }
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
- (IBAction)handleUp:(id)sender {
    for(int i = 4; i<=15; i++){
        UILabel *tile = [_gameArray objectAtIndex: i];
        UILabel *tileAbove = [_gameArray objectAtIndex: i-4];
        if(tileAbove.text == tile.text){
            int new = tileAbove.text.intValue * 2;
            tileAbove.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }else if(tileAbove == 0){
            int new = tile.text.intValue;
            tileAbove.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }
    }
    for(int i = 15; i >= 4; i--){
        UILabel *tile = [_gameArray objectAtIndex: i];
        UILabel *tileAbove = [_gameArray objectAtIndex: i-4];
        if(tileAbove.text == @"0"){
            int new = tile.text.intValue;
            tileAbove.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }
    }

}
- (IBAction)handleRight:(id)sender {
    for (int i = 2; i>=0;i--){
        for(int j = 0; j<= 3; j++){
            int indy = i + (4*j);
            UILabel *tile = [_gameArray objectAtIndex: indy];
            UILabel *tileRight = [_gameArray objectAtIndex:indy+1];
            if(tileRight.text == tile.text){
                int new = tileRight.text.intValue * 2;
                tileRight.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }else if(tileRight.text == @"0"){
                int new = tile.text.intValue;
                tileRight.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }
        }
    }
    for(int i = 0; i<=2; i++){
        for(int j = 0; j<=3; j++){
            int indy = i + (4*j);
            UILabel *tile = [_gameArray objectAtIndex: indy];
            UILabel *tileRight = [_gameArray objectAtIndex:indy+1];
            if(tileRight.text == @"0"){
                int new = tile.text.intValue;
                tileRight.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }
        }
    }
}
- (IBAction)handleDown:(id)sender {
    for(int i = 11; i>=0; i--){
        UILabel *tile = [_gameArray objectAtIndex: i];
        UILabel *tileBelow = [_gameArray objectAtIndex: i+4];
        if(tileBelow.text == tile.text){
            int new = tileBelow.text.intValue * 2;
            tileBelow.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }else if(tileBelow == 0){
            int new = tile.text.intValue;
            tileBelow.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }
    }
    for(int i = 0; i <= 11; i++){
        UILabel *tile = [_gameArray objectAtIndex: i];
        UILabel *tileBelow = [_gameArray objectAtIndex: i+4];
        if(tileBelow.text == @"0"){
            int new = tile.text.intValue;
            tileBelow.text = [NSString stringWithFormat:@"%d",new];
            tile.text = @"0";
        }
    }
}
- (IBAction)handleLeft:(id)sender {
    for (int i = 1; i>=3;i++){
        for(int j = 0; j<= 3; j++){
            int indy = i + (4*j);
            UILabel *tile = [_gameArray objectAtIndex: indy];
            UILabel *tileLeft = [_gameArray objectAtIndex:indy-1];
            if(tileLeft.text == tile.text){
                int new = tileLeft.text.intValue * 2;
                tileLeft.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }else if(tileLeft.text == @"0"){
                int new = tile.text.intValue;
                tileLeft.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }
        }
    }
    for(int i = 3; i>=1; i--){
        for(int j = 0; j<=3; j++){
            int indy = i + (4*j);
            UILabel *tile = [_gameArray objectAtIndex: indy];
            UILabel *tileLeft = [_gameArray objectAtIndex:indy-1];
            if(tileLeft.text == @"0"){
                int new = tile.text.intValue;
                tileLeft.text = [NSString stringWithFormat:@"%d",new];
                tile.text = @"0";
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
