import 'package:flutter/material.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/extensions/sized_box_extension.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/res/strings.dart';
import 'package:whach_shop/route/names.dart';
import 'package:whach_shop/widgets/app_text_field.dart';
import 'package:whach_shop/widgets/avatar.dart';
import 'package:whach_shop/widgets/main_button.dart';
import 'package:whach_shop/widgets/register_appbar.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController nameLastNameController = TextEditingController();
  TextEditingController homeNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: RegisterationAppBar(size: size),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppDimens.large.height,
              const Avatar(),

              ///TODO:Name & Last Name TextField
              AppTextField(
                  lable: AppStrings.nameLastName,
                  hint: AppStrings.hintNameLastName,
                  controller: nameLastNameController),
              AppDimens.medium.height,

              ///TODO:Phone Number TextField
              AppTextField(
                  lable: AppStrings.homeNumber,
                  hint: AppStrings.hintHomeNumber,
                  controller: homeNumberController),
              AppDimens.medium.height,

              ///TODO:Address TextField
              AppTextField(
                  lable: AppStrings.address,
                  hint: AppStrings.hintAddress,
                  controller: addressController),
              AppDimens.medium.height,

              ///TODO:Postal Code TextField
              AppTextField(
                  lable: AppStrings.postalCode,
                  hint: AppStrings.hintPostalCode,
                  controller: postalCodeController),
              AppDimens.medium.height,

              ///TODO:Location TextField
              AppTextField(
                  lable: AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: locationController,
                  icon: const Icon(Icons.location_on)),
              MainButton(
                lable: AppStrings.next,
                onPress: () =>
                    Navigator.pushNamed(context, ScreenNames.mainScreen),
              ),
              AppDimens.large.height,
            ],
          ),
        ),
      ),
    ));
  }
}
