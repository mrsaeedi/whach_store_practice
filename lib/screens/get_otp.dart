import 'package:flutter/material.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/gen/assets.gen.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/extensions/sized_box_extension.dart';
import 'package:whach_shop/res/strings.dart';
import 'package:whach_shop/route/names.dart';
import 'package:whach_shop/widgets/app_text_field.dart';
import 'package:whach_shop/widgets/main_button.dart';

class GetOPTScreen extends StatelessWidget {
  GetOPTScreen({super.key});
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.large.height,
            Text(
              AppStrings.otpCodeSendFor
                  .replaceAll(AppStrings.replace, '09120000'),
              style: LightAppTextStyle.title,
            ),
            AppDimens.small.height,
            const Text(AppStrings.wrongNumberEditNumber,
                style: LightAppTextStyle.primaryTextStyle),
            AppDimens.large.height,
            AppTextField(
              lable: AppStrings.enterVerificationCode,
              prifixLable: '2:25 ',
              hint: AppStrings.hintVerificationCode,
              controller: numberController,
            ),
            MainButton(
              lable: AppStrings.next,
              onPress: () {
                Navigator.pushNamed(context, ScreenNames.registerScreen);
              },
            )
          ],
        ),
      ),
    ));
  }
}
