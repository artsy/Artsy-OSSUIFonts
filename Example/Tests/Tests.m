//
//  Artsy+UIFontsTests.m
//  Artsy+UIFontsTests
//
//  Created by Orta on 06/20/2014.
//  Copyright (c) 2014 Orta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Artsy+UIFonts/UIFont+ArtsyFonts.h>

#ifndef expect
#define expect(...) EXP_expect((__VA_ARGS__))
#endif

SpecBegin(FontSpecs)

it(@"serifBoldItalicFont to be the right font", ^{
    expect([UIFont serifBoldItalicFontWithSize:12].fontName).to.equal(@"AGaramondPro-BoldItalic");
});

it(@"serifBoldFont to be the right font", ^{
    expect([UIFont serifBoldFontWithSize:12].fontName).to.equal(@"AGaramondPro-Bold");
});

it(@"serifSemiBoldFont to be the right font", ^{
    expect([UIFont serifSemiBoldFontWithSize:12].fontName).to.equal(@"AGaramondPro-Bold");
});

it(@"serifFont to be the right font", ^{
    expect([UIFont serifFontWithSize:12].fontName).to.equal(@"AGaramondPro-Regular");
});

it(@"serifItalicFont to be the right font", ^{
    expect([UIFont serifItalicFontWithSize:12].fontName).to.equal(@"AGaramondPro-Italic");
});

it(@"sansSerifFont to be the right font", ^{
    expect([UIFont sansSerifFontWithSize:12].fontName).to.equal(@"AvantGardeGothicITCW01Dm");
});

it(@"smallCapsSerifFont to be the right font", ^{
    expect([UIFont smallCapsSerifFontWithSize:12].fontName).to.equal(@"AGaramondPro-Regular");
});

SpecEnd
