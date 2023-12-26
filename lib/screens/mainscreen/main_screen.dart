import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whach_shop/components/text_style.dart';
import 'package:whach_shop/gen/assets.gen.dart';
import 'package:whach_shop/res/colors.dart';
import 'package:whach_shop/screens/mainscreen/bascket_screen.dart';
import 'package:whach_shop/screens/mainscreen/home_screen.dart';
import 'package:whach_shop/screens/mainscreen/profile_screen.dart';
import 'package:whach_shop/widgets/btm_nav_item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();
  static const home = 0;
  static const bascket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _routeHistory = [BtmNavScreenIndex.home];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _bascketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();
  late final map = {
    BtmNavScreenIndex.home: _homeKey,
    BtmNavScreenIndex.bascket: _bascketKey,
    BtmNavScreenIndex.profile: _profileKey,
  };
  int selectedIndex = BtmNavScreenIndex.home;

  Future<bool> _onPop() async {
    if (map[selectedIndex]!.currentState!.canPop()) {
      map[selectedIndex]!.currentState!.pop();
    } else if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        selectedIndex = _routeHistory.last;
      });
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNavHeight = size.height * 0.1;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        _onPop();
      },
      child: SafeArea(
          child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: btmNavHeight,
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    Navigator(
                      key: _bascketKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const BascketScreen(),
                      ),
                    ),
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  ],
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: AppColors.bottomNavColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtmNavItem(
                        iconSvgPath: Assets.svg.user,
                        text: 'پروفایل',
                        isActive: selectedIndex == BtmNavScreenIndex.profile,
                        onPress: () =>
                            btmNavOnPress(index: BtmNavScreenIndex.profile)),
                    BtmNavItem(
                        iconSvgPath: Assets.svg.cart,
                        text: 'سبدخرید',
                        isActive: selectedIndex == BtmNavScreenIndex.bascket,
                        onPress: () =>
                            btmNavOnPress(index: BtmNavScreenIndex.bascket)),
                    BtmNavItem(
                      iconSvgPath: Assets.svg.home,
                      text: 'خانه',
                      isActive: selectedIndex == BtmNavScreenIndex.home,
                      onPress: () =>
                          btmNavOnPress(index: BtmNavScreenIndex.home),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  btmNavOnPress({required index}) {
    setState(() {
      selectedIndex = index;
      _routeHistory.add(selectedIndex);
    });
  }
}
