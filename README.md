[![Build Status](https://travis-ci.org/artsy/Artsy-OSSUIFonts.svg?branch=master)](https://travis-ci.org/artsy/Artsy-OSSUIFonts)

# Artsy+OSSUIFonts

This project contains the fonts and UIFont categories required to make a project with standard artsy design. We cannot include the fonts that we would normally use in a public project, so these are the closest equivilents that are available and have open source-compatible licenses.

You can find out more by checking out the websites for [EB Garamond](http://www.georgduffner.at/ebgaramond/index.html) and [TeX Gyre Adventor](http://www.gust.org.pl/projects/e-foundry/tex-gyre).

To make it work you have to include in the Applications XX-Info.plist. See [here](https://github.com/artsy/Artsy-OSSUIFonts/blob/master/Example/FontApp/FontApp-Info.plist#L37-L45) for an example.

```
<array>
    <string>EBGaramond08-Italic.ttf</string>
    <string>EBGaramond08-Regular.ttf</string>
    <string>EBGaramond12-Italic.ttf</string>
    <string>EBGaramond12-Regular.ttf</string>
    <string>texgyreadventor-regular.ttf</string>
</array>
```

## Usage

To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Installation

Artsy+OSSUIFonts is available through [CocoaPods](http://cocoapods.org), and the [Artsy Specs Repo](https://github.com/artsy/specs).

To install the Specs repo run:

    pod repo add artsy https://github.com/artsy/Specs.git

To install the pod, add following line to your Podfile:

    pod "Artsy+OSSUIFonts"

## Wrapper

Orta, orta.therox@gmail.com

## License

The Code itself is MIT. 
The font license for EB Garamonds is the [SIL Open Fonts License](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)
The font license for Text Gyre Adventor is the [GUST Font License](http://www.gust.org.pl/projects/e-foundry/index_html#GFL)
