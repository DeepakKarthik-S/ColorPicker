//
//  ViewController.m
//  Colorpicker
//
//  Created by deepaks on 22/06/16.
//  Copyright © 2016 deepaks. All rights reserved.
//

#import "ViewController.h"
#define UIColorFromRGB(rgbValue)
@interface ViewController ()
{
    NSMutableArray*ColorArray;
    CGFloat Red;
    CGFloat Green;
    CGFloat Blue;
    CGFloat Alpha;
}
@end

@implementation ViewController
@synthesize ColorView,Slider;
- (void)viewDidLoad {
    [super viewDidLoad];
    [Slider setHidden:NO];
    ColorArray=[[NSMutableArray alloc]initWithObjects:@"0x000000", @"0x262626", @"0x4d4d4d", @"0x666666", @"0x808080", @"0x990000", @"0xcc0000", @"0xfe0000", @"0xff5757", @"0xffabab", @"0xffabab", @"0xffa757", @"0xff7900", @"0xcc6100", @"0x994900", @"0x996f00", @"0xcc9400", @"0xffb900", @"0xffd157", @"0xffe8ab", @"0xfff4ab", @"0xffe957", @"0xffde00", @"0xccb200", @"0x998500", @"0x979900", @"0xcacc00", @"0xfcff00", @"0xfdff57", @"0xfeffab", @"0xf0ffab", @"0xe1ff57", @"0xd2ff00", @"0xa8cc00", @"0x7e9900", @"0x038001", @"0x04a101", @"0x05c001", @"0x44bf41", @"0x81bf80", @"0x81c0b8", @"0x41c0af", @"0x00c0a7", @"0x00a18c", @"0x00806f", @"0x040099", @"0x0500cc", @"0x0600ff", @"0x5b57ff", @"0xadabff", @"0xd8abff", @"0xb157ff", @"0x6700bf", @"0x5700a1", @"0x450080", @"0x630080", @"0x7d00a1", @"0x9500c0", @"0xa341bf", @"0xb180bf", @"0xbf80b2", @"0xbf41a6", @"0xbf0199", @"0xa10181", @"0x800166", @"0x999999", @"0xb3b3b3", @"0xcccccc", @"0xe6e6e6", @"0xffffff", nil];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ActionSlider:(id)sender {
    NSLog(@"Number=%@",[NSNumber numberWithInteger:[Slider value]]);
    ColorView.backgroundColor=[self colorFromHexString:[ColorArray objectAtIndex:(int)[Slider value]]];
    NSLog(@"color=%@",[ColorArray objectAtIndex:(int)[Slider value]]);
}
-(UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    Red =   (float)((rgbValue & 0xFF0000) >> 16) / 0xFF;
    Green = (float)((rgbValue & 0x00FF00) >> 8) / 0xFF;
    Blue =  (float)(rgbValue & 0x0000FF) / 0xFF;
    Alpha = (1.0);
    return [UIColor colorWithRed:Red green:Green blue:Blue alpha:Alpha];
   }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
