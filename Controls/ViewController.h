//
//  ViewController.h
//  Controls
//
//  Created by EnzoF on 06.09.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *rotationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *scaleSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *translationSwitch;
@property (weak, nonatomic) IBOutlet UISlider *speedSlider;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


-(IBAction)actionRotation:(id)sender;
-(IBAction)actionScale:(id)sender;
-(IBAction)actionTranslation:(id)sender;
-(IBAction)actionSpeed:(id)sender;


@end

