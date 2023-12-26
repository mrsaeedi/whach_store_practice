import 'package:flutter/material.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/extensions/sized_box_extension.dart';
import 'package:whach_shop/gen/assets.gen.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/res/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(Assets.png.avatar.path),
        ),
        AppDimens.medium.height,
        Text(
          AppStrings.chooseProfileImage,
          style: LightAppTextStyle.avatarTextStyle,
        )
      ],
    );
  }
}
