import 'package:flutter/material.dart';
import 'package:whach_shop/components/theme.dart';
import 'package:whach_shop/route/names.dart';
import 'package:whach_shop/route/routs.dart';
import 'package:whach_shop/screens/get_otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whach store',
      initialRoute: ScreenNames.root,
      routes: routes,
      theme: lightTheme(),
      // home: GetOPTScreen(),
    );
  }
}
