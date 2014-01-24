//
//  WToast.h
//  WToast
//
//  Small popup message inspired by Android Toast object
//
//  Created by Nik S Dyonin on 08.04.11.
//  Copyright (c) 2011 Nik S Dyonin. All rights reserved.
//

#define RGB(a, b, c) [UIColor colorWithRed:(a / 255.0f) green:(b / 255.0f) blue:(c / 255.0f) alpha:1.0f]
#define RGBA(a, b, c, d) [UIColor colorWithRed:(a / 255.0f) green:(b / 255.0f) blue:(c / 255.0f) alpha:d]

@interface WToast : UIControl

+ (WToast *)showWithText:(NSString *)text;
+ (WToast *)showWithImage:(UIImage *)image;

+ (WToast *)showWithText:(NSString *)text duration:(CGFloat)duration;
+ (WToast *)showWithImage:(UIImage *)image duration:(CGFloat)duration;

@end
