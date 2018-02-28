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
    expect([UIFont sansSerifFontWithSize:12].fontName).to.equal(@"AvantGardeGothicITC");
});

it(@"smallCapsSerifFont to be the right font", ^{
    expect([UIFont smallCapsSerifFontWithSize:12].fontName).to.equal(@"AGaramondPro-Regular");
});

it(@"displaySansSerifFontWithSize to be the right font", ^{
    expect([UIFont displaySansSerifFontWithSize:12].fontName).to.equal(@"Helvetica-Light");
});

it(@"displayItalicSansSerifFontWithSize to be the right font", ^{
    expect([UIFont displayItalicSansSerifFontWithSize:12].fontName).to.equal(@"Helvetica-LightOblique");
});

it(@"displayMediumSansSerifFontWithSize to be the right font", ^{
    expect([UIFont displayMediumSansSerifFontWithSize:12].fontName).to.equal(@"Helvetica");
});

it(@"displayMediumItalicSansSerifFontWithSize to be the right font", ^{
    expect([UIFont displayMediumItalicSansSerifFontWithSize:12].fontName).to.equal(@"Helvetica-Oblique");
});

SpecEnd
