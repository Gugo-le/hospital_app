import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appcolors.dart';

/// 🔥 MVP Architecture🔥
/// 🍴 Focused on Clean Architecture
/// Created by 🔱 Pratik Kataria 🔱 on 12-08-2021.
const kFontFamily = 'Visby';
const kFontRegular = 'Poppins_Regular';
const kFontSemiBold = 'NotoSans_Medium';
const kFontBold = 'Poppins_SemiBold';
// const kFontHeavy = 'Lato_Heavy';

const fontH7 = 10.0;
const fontH6 = 12.0;
const fontH4 = 16.0;
const fontH3 = 18.0;
const fontH2 = 21.0;
const fontH1 = 24.0;

const textStyleWhiteBoldH6 =
    TextStyle(color: AppColors.white, fontFamily: kFontBold, fontSize: fontH6);

const textStyleDarkBoldH6 = TextStyle(
    color: AppColors.textColor, fontFamily: kFontBold, fontSize: fontH6);

const textStyleWhiteSemiBoldH4 = TextStyle(
    color: AppColors.textColor, fontFamily: kFontSemiBold, fontSize: fontH4);

const textStyleDarkSemiBoldH4 = TextStyle(
    color: AppColors.textColor, fontFamily: kFontSemiBold, fontSize: fontH4);

const textStyleDarkSemiBoldH3 = TextStyle(
    color: AppColors.textColor, fontFamily: kFontSemiBold, fontSize: fontH4);

const textStyleWhite18px600w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18);

const textStyleWhiteHeavy24px = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: fontH1);

const textStyleDarkHeavy24px = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: fontH1);

const textStyleDarkHeavy24px700 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH1);

const textStyleDarkHeavy24px800 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: fontH1,
    height: 1.2);

const textStyleDarkHeavy24px600 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH1);

const textStyleDark48px700 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 48);

const textStyleRedRegular18px = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH3);

const textStyleRegular18px = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH3);

const textStyleRegular18pxW600 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH3);

const textStyleRegular18pxW500 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH3);

const textStylePrimary18pxW500 = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH3);

const textStyleWhiteRegular18pxW700 = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH3);

const textStyleDark18pxW700 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18);

const textStyleDarkRegular18pxW700 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH3);

const textStyleLightRegular12px = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleRedBold12px = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: fontH6);

const textStyle12px600w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyleBlue12px600w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyleSubText12px600w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyle12px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH6);

const textStyleSubText12px700w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH6);

const textStyleSubText18px700w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18);

const textStylePrimary12px600w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyleDark12px600w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyleGrey12px600w = TextStyle(
    color: AppColors.textColorGrey,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH6);

const textStyleGrey12px400w = TextStyle(
    color: AppColors.textColorGrey,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleSubText12px400w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleDark12px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH6);

const textStyleWhite12px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH6);

const textStyleDark12px400w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleDark12px500w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyle12px400w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleWhite12px400w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleBlack12px300w = TextStyle(
    color: AppColors.black,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w300,
    fontSize: fontH6);

const textStyleBlack12px700w = TextStyle(
    color: AppColors.black,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH6);

const textStyleLight12px400w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyle12px500w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleWhite12px500w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleSubText12px500w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleGreen12px500w = TextStyle(
    color: AppColors.textColorGreen,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleRed12px500w = TextStyle(
    color: Colors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleSubText16px500w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16);

const textStyleSubText16px400w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16);

const textStyleSubText16px500wL1 = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    height: 1.5,
    fontSize: 16);

const textStyleGrey10px500w = TextStyle(
    color: AppColors.textColorGrey,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 10);

const textStylePrimary12px500w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH6);

const textStyleRed10px500w = TextStyle(
  color: AppColors.colorPrimary,
  fontFamily: kFontFamily,
);

const textStyleWhite10px500w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 10);

const textStyleSubText10px400w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 10);

const textStyleRegular12px = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleRedRegular12px = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleRedRegular16px = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleWhiteRegular16px = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleDarkRegular14px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14);

const textStyleDarkRegular14px600w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14);

const textStyleDarkRegular16px600w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16);

const textStyleDark14px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14);

const textStyleRed14px700w = TextStyle(
    color: Colors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14);

const textStylePrimary14px600w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14);

const textStyleWhite14px600w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14);

const textStyleSubText14px600w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14);

const textStyleBlue14px600w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14);

const textStyle14px500w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyle14px500w20H = TextStyle(
  color: AppColors.textColor,
  fontFamily: kFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: 14,
  height: 1.5,
);

const textStyleDark14px500w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleDark14px500wH08 = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    height: 1.3,
    fontSize: 14);

const textStyleSecondaryLight14px500w = TextStyle(
    color: AppColors.colorSecondaryLight,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleHeader14px500w = TextStyle(
    color: AppColors.textColorHeather,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleRedRegular14px700w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14);

const textStyleRegular14px400w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14);

const textStyleSubText14px400w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14);

const textStyleSubText14px500w = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleSubText14px400w2l = TextStyle(
    color: AppColors.textColorSubText,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 2.0);

const textStyleWhite14px400w2l = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 2.0);

const textStyleLite14px400w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14);

const textStyleRegular16px500px = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH4);

const textStyleRegular16px600px = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleRed16px500w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: fontH4);

const textStyleRed16px600w = TextStyle(
    color: AppColors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleRed12px600w = TextStyle(
    color: AppColors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12);

const textStyleWhite12px600w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12);

const textStyleWhite16px600w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleDark16px600w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleRegular16px600w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStylePrimary16px600w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleDark26px600w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 26);

const textStyleDark26px300w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 26);

const textStyleRegular16px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH4);

const textStyleLite16px700w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH4);

const textStylePrimary16px700w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: fontH4);

const textStyleRegular16px400w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH4);

const textStyleDarkRegular16px400w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH4);

const textStyleBlue16px600w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: fontH4);

const textStyleRed16px400w = TextStyle(
    color: AppColors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH4);

const textStyleRegular16px500w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16);

const textStylePrimary16px500w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16);

const textStyleBlue12px500w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12);

const textStylePrimary14px500w = TextStyle(
    color: AppColors.colorPrimary,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleBlue14px500w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleWhite14px500w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14);

const textStyleWhite16px500w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16);

const textStyleWhite16px400w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16);

const textStyleLightRegular16px500w = TextStyle(
    color: AppColors.white,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16);

const textStyleErrorRedRegular12px = TextStyle(
    color: Colors.red,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontH6);

const textStyleRegular27px700w = TextStyle(
    color: AppColors.textColorBlack,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 27);

const textStyle24px500w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 24);

const textStyleBlue24px600w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24);

const textStyle20px500w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 20);

const textStyle34px700w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 1.5,
    fontSize: 34);

const textStyle28px700w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 1.5,
    fontSize: 28);

const textStyle20px800w = TextStyle(
    color: AppColors.textColor,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 20);

const textStyleBlue20px600w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 20);

const textStyleBlue24px300w = TextStyle(
    color: AppColors.textColorBlue,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w300,
    fontSize: 24);

// class Responsive {
//     static textStyleBlue24px600wRes(BuildContext context) => TextStyle(
//         color: AppColors.textColorBlue,
//         fontFamily: kFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: (Utility.screenWidth(context) * 0.08));
//
//       static textStyleBlue24px300w(BuildContext context) => TextStyle(
//         color: AppColors.textColorBlue,
//         fontFamily: kFontFamily,
//         fontWeight: FontWeight.w300,
//         fontSize: (Utility.screenWidth(context) * .08));
//
//     static textStyleWhite14px400w(BuildContext context) =>  TextStyle(
//         color: AppColors.white,
//         fontFamily: kFontFamily,
//         fontWeight: FontWeight.w400,
//         fontSize: (Utility.screenWidth(context) * .04));
//
//     static textStylePrimary14px400wc(BuildContext context) =>  TextStyle(
//         color: AppColors.colorPrimary,
//         fontFamily: kFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: (Utility.screenWidth(context) * .04));
//
//     static textStyleSubText14px400w(BuildContext context) => TextStyle(
//         color: AppColors.textColorSubText,
//         fontFamily: kFontFamily,
//         fontWeight: FontWeight.w400,
//         fontSize: (Utility.screenWidth(context) * .04));
// }
