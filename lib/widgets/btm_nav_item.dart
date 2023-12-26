import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/extensions/sized_box_extension.dart';
import 'package:whach_shop/res/dimens.dart';

import '../res/colors.dart';

class BtmNavItem extends StatelessWidget {
  final String iconSvgPath;
  final String text;
  final bool isActive;
  final void Function() onPress;
  const BtmNavItem({
    required this.iconSvgPath,
    required this.text,
    required this.isActive,
    required this.onPress,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(4),
        color: AppColors.bottomNavColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconSvgPath,
              colorFilter: ColorFilter.mode(
                  isActive
                      ? Colors.black
                      : const Color.fromARGB(255, 185, 185, 185),
                  BlendMode.srcIn),
            ),
            AppDimens.small.height,
            Text(
              text,
              style: isActive
                  ? LightAppTextStyle.bottomNavActive
                  : LightAppTextStyle.bottomNavDeActive,
            )
          ],
        ),
      ),
    );
  }
}
