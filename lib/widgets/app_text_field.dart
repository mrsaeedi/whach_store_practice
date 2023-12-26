import 'package:flutter/material.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/extensions/sized_box_extension.dart';
import 'package:whach_shop/res/dimens.dart';

class AppTextField extends StatelessWidget {
  final String lable;
  final String prifixLable;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAline;
  final TextInputType? inputType;
  const AppTextField({
    super.key,
    required this.lable,
    this.prifixLable = '',
    required this.hint,
    required this.controller,
    this.inputType,
    this.textAline = TextAlign.center,
    this.icon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(prifixLable),
                Text(
                  lable,
                  style: LightAppTextStyle.title,
                ),
              ],
            ),
          ),
          AppDimens.medium.height,
          SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.75,
              child: TextField(
                textAlign: textAline,
                controller: controller,
                keyboardType: inputType,
                decoration: InputDecoration(
                    hintText: hint,
                    prefixIcon: icon,
                    hintStyle: LightAppTextStyle.hint),
              ))
        ],
      ),
    );
  }
}
