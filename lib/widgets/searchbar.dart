import 'package:flutter/material.dart';
import 'package:whach_shop/gen/assets.gen.dart';
import 'package:whach_shop/res/colors.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/res/strings.dart';

class MainSearchBar extends StatelessWidget {
  final VoidCallback onTap;

  const MainSearchBar({
    required this.onTap,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: AppColors.appbarColor,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(151, 97, 97, 97),
                    offset: Offset(0, 3),
                    blurRadius: 3)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(AppStrings.searchProduct),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Assets.png.mainLogo.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
