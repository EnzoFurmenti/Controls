//
//  ViewController.m
//  Controls
//
//  Created by EnzoF on 06.09.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "ViewController.h"
typedef enum{
    ViewControllerImageAct1 = 0,
    ViewControllerImageAct2 = 1,
    ViewControllerImageAct3 = 2,
}ViewControllerTypeImage;
@interface ViewController ()
@property (strong,nonatomic)NSDictionary *dictImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image1 = [UIImage imageNamed:@"action-1.png"];
    UIImage *image2 = [UIImage imageNamed:@"action-2.png"];
    UIImage *image3 = [UIImage imageNamed:@"action-3.png"];
    self.dictImages = [[NSDictionary alloc]initWithObjectsAndKeys:
                        image1,@"action-1.png",
                        image2,@"action-2.png",
                        image3,@"action-3.png", nil];
    
    self.imageView.image = image1;
    self.imageView.layer.cornerRadius = 5.f;
    self.imageView.layer.borderWidth = 3.f;
    self.imageView.layer.borderColor = [UIColor greenColor].CGColor;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma  mark - Action
-(IBAction)actionRotation:(UISwitch*)sender{

}

-(IBAction)actionScale:(UISwitch*)sender{

}

-(IBAction)actionTranslation:(UISwitch*)sender{

}

-(IBAction)actionSpeed:(UISlider*)sender{

}

-(IBAction)actionImageControl:(UISegmentedControl*)sender{
    NSString *keyImage = nil;
    NSInteger selectedSegment = [sender selectedSegmentIndex];
    switch (selectedSegment) {
        case ViewControllerImageAct1:
            keyImage = @"action-1.png";
            break;
        case ViewControllerImageAct2:
            keyImage = @"action-2.png";
            break;

        case ViewControllerImageAct3:
            keyImage = @"action-3.png";
            break;
    }
    
    self.imageView.image = [self.dictImages objectForKey:keyImage];

}





@end
