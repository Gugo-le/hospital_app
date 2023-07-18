import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'appcolors.dart';

/// Created by Pratik Kataria on 20-02-2021.

class Utility {
  static final emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  static double screenWidth(BuildContext context) {
    // print('${MediaQuery.of(context).size.width/1.55}');
    return MediaQuery.of(context).size.width;
  }

  static bool isWeb(BuildContext context) {
    return kIsWeb;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static var paddingSize15Box = const SizedBox(
    height: 15,
  );
  static var paddingSize10Box = const SizedBox(
    height: 10,
  );

  static var paddingSize30Box = const SizedBox(
    height: 30,
  );

  static log(var tag, var message) {
    // dev.log('\n\n*****************\n$tag\n$message\n*****************\n\n');
    print('\n\n*****************\n$tag\n$message\n*****************\n\n');
  }

  static void portrait() =>
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  static void statusBarAndNavigationBarColor() =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.white, // status bar color
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.background, // status bar icon color
      ));

  static void statusBarAndNavigationBarColorDark() =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.textColorBlack, // status bar color
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor:
            AppColors.textColorBlack, // status bar icon color
      ));

  static String calculateReturnDateString(
      String deliveryDate, int timePeriodDays) {
    DateTime deliveryDateTime = DateTime.parse(deliveryDate).toLocal();
    ;
    DateTime returnTime = DateTime(deliveryDateTime.year,
        deliveryDateTime.month, deliveryDateTime.day + 7);
    return '${returnTime.day}/${returnTime.month}/${returnTime.year}';
  }

  static DateTime calculateReturnDate(String deliveryDate, int timePeriodDays) {
    DateTime deliveryDateTime = DateTime.parse(deliveryDate).toLocal();
    ;
    DateTime returnTime = DateTime(deliveryDateTime.year,
        deliveryDateTime.month, deliveryDateTime.day + 7);
    return returnTime;
  }

  static int calculateExtendDays(String deliveryDate, int timePeriodDays) {
    DateTime deliveryDateTime = DateTime.parse(deliveryDate).toLocal();
    ;
    DateTime returnDate = calculateReturnDate(deliveryDate, timePeriodDays);
    int days = deliveryDateTime.difference(returnDate).inDays;
    return days;
  }

  static bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}

Widget verticalSpace(double height) => SizedBox(
      height: height,
    );

Widget horizontalSpace(double height) => SizedBox(
      width: height,
    );

Widget line({required double width}) => Container(
      width: width,
      height: 1,
      color: AppColors.lineColor,
    );

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
