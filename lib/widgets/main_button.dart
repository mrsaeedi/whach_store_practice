import 'package:flutter/material.dart';
import 'package:whach_shop/components/botton_style.dart';
import 'package:whach_shop/components/text_style.dart';

class MainButton extends StatelessWidget {
  final void Function() onPress;
  final String lable;
  const MainButton({super.key, required this.lable, required this.onPress});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.07,
      width: size.width * 0.75,
      child: ElevatedButton(
        onPressed: onPress,
        style: AppButtonStyle.mainButtonStyle,
        child: Text(
          lable,
          style: LightAppTextStyle.buttonText,
        ),
      ),
    );
  }
}
