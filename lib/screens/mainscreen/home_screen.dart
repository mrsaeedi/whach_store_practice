import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whach_shop/gen/assets.gen.dart';
import 'package:whach_shop/res/colors.dart';
import 'package:whach_shop/res/dimens.dart';
import 'package:whach_shop/res/strings.dart';
import 'package:whach_shop/route/names.dart';
import 'package:whach_shop/screens/product_list_screen.dart';
import 'package:whach_shop/widgets/app_slider.dart';
import 'package:whach_shop/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainSearchBar(
              onTap: () {},
            ),
            AppSlider()
          ],
        ),
      ),
    ));
  }
}
