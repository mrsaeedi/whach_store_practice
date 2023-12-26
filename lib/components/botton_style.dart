import 'package:flutter/material.dart';
import 'package:whach_shop/res/colors.dart';
import 'package:whach_shop/res/dimens.dart';

class AppButtonStyle {
  AppButtonStyle._();

  static ButtonStyle mainButtonStyle = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(AppColors.primaryColor),
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimens.medium),
    )),
  );
}
