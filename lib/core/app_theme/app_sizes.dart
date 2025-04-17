import 'package:flutter/cupertino.dart';


// class to define the fixed height and width to be used in the app
class AppSizes{

  static double getDeviceWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

  static const gapH10 = SizedBox(height: 10);
  static const gapH14 = SizedBox(height: 14);
  static const gapH16 = SizedBox(height: 16);
  static const gapH20 = SizedBox(height: 20);

  static const gapW10 = SizedBox(width: 10);
  static const gapW14 = SizedBox(width: 14);
  static const gapW16 = SizedBox(width: 16);
  static const gapW20 = SizedBox(width: 20);
}