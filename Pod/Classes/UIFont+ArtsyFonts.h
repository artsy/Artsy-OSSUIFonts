@interface UIFont (ArtsyFonts)

/// Garamond
+ (UIFont *)serifFontWithSize:(CGFloat)size;

/// Garamond Semi Bold
+ (UIFont *)serifSemiBoldFontWithSize:(CGFloat)size;

/// Garamond Bold
+ (UIFont *)serifBoldFontWithSize:(CGFloat)size;

/// Garamond Bold Italic
+ (UIFont *)serifBoldItalicFontWithSize:(CGFloat)size;

/// Garamond Italic
+ (UIFont *)serifItalicFontWithSize:(CGFloat)size;

/// *** These RN-specific versions of Garamond exist to work around a line-height rendering bug in iOS *** ///
/// *** https://github.com/facebook/react-native/issues/7687#issuecomment-340068360 *** ///

/// React Native Garamond
+ (UIFont *)reactNativeSerifFontWithSize:(CGFloat)size;

/// React Native Garamond Semibold
+ (UIFont *)reactNativeSerifFontWithSize:(CGFloat)size;

/// React Native Garamond Italic
+ (UIFont *)reactNativeSerifFontItalicWithSize:(CGFloat)size;

/// Avant Garde
+ (UIFont *)sansSerifFontWithSize:(CGFloat)size;

/// Garamond with modifiers
+ (UIFont *)smallCapsSerifFontWithSize:(CGFloat)size;

/// Unica
+ (UIFont *)displaySansSerifFontWithSize:(CGFloat)size;

/// Unica Italic
+ (UIFont *)displayItalicSansSerifFontWithSize:(CGFloat)size;

/// Unica Medium
+ (UIFont *)displayMediumSansSerifFontWithSize:(CGFloat)size;

/// Unica Medium Italic
+ (UIFont *)displayMediumItalicSansSerifFontWithSize:(CGFloat)size;

@end
