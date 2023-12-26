import 'package:flutter/material.dart';
import 'package:whach_shop/route/names.dart';
import 'package:whach_shop/screens/get_otp.dart';
import 'package:whach_shop/screens/mainscreen/main_screen.dart';
import 'package:whach_shop/screens/product_list_screen.dart';
import 'package:whach_shop/screens/product_single_screen.dart';
import 'package:whach_shop/screens/register_screen.dart';
import 'package:whach_shop/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => SendOTPScreen(),
  ScreenNames.getOTPScreen: (context) => GetOPTScreen(),
  ScreenNames.registerScreen: (context) => RegisterScreen(),
  ScreenNames.mainScreen: (context) => MainScreen(),
  ScreenNames.singlePage: (context) => ProductSingleScreen(),
  ScreenNames.productListScreen: (context) => ProductListScreen(),
};
