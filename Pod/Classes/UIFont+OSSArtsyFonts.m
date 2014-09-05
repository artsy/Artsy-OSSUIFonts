//
//  UIFont+ArtsyFonts.m
//  Artsy
//
//  Created by Orta Therox on 11/11/2011.
//  Copyright (c) 2011 Artsy. All rights reserved.
//

#import "UIFont+OSSArtsyFonts.h"

@implementation UIFont (ArtsyFonts)

+ (UIFont *)serifBoldItalicFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"EBGaramond08-Italic" size:size];
}

+ (UIFont *)serifBoldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"EBGaramond08-Regular" size:size];
}

+ (UIFont *)serifSemiBoldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"EBGaramond08-Regular" size:size];
}

+ (UIFont *)serifFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"EBGaramond12-Regular" size:size];
}

+ (UIFont *)serifItalicFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"EBGaramond12-Italic" size:size];
}

+ (UIFont *)sansSerifFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"texgyreadventor-regular" size:size];
}

+ (UIFont *)smallCapsSerifFontWithSize:(CGFloat)size
{
    NSArray *fontFeatureSettings = @[ @{ UIFontFeatureTypeIdentifierKey: @(38),
                                         UIFontFeatureSelectorIdentifierKey : @(1) } ];

    NSDictionary *fontAttributes = @{ UIFontDescriptorFeatureSettingsAttribute: fontFeatureSettings,
                                      UIFontDescriptorNameAttribute: @"EBGaramond12-Regular",
                                      UIFontDescriptorSizeAttribute: @(size)};

    UIFontDescriptor *fontDescriptor = [[UIFontDescriptor alloc] initWithFontAttributes: fontAttributes];
    return [UIFont fontWithDescriptor:fontDescriptor size:size];
}

@end
