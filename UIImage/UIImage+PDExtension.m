//
//  UIImage+PDExtension.m
//  Aesthplus
//
//  Created by sun on 2017/4/14.
//  Copyright © 2017年 SJKG. All rights reserved.
//

#import "UIImage+PDExtension.h"

@implementation UIImage (PDExtension)
- (instancetype)circleImage
{
    UIGraphicsBeginImageContext(self.size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    CGContextClip(ctx);
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (instancetype)circleImage:(NSString *)image
{
    return [[self imageNamed:image] circleImage];
}
@end
