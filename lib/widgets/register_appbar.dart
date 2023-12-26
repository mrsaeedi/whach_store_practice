import 'package:flutter/material.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/res/strings.dart';

class RegisterationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegisterationAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(double.infinity, size.height * 0.1),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text(
                AppStrings.register,
                style: LightAppTextStyle.title,
              )
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(size.height * 1.1);
}
