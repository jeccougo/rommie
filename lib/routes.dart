






import 'package:flutter/cupertino.dart';
import 'package:roomie/screens/explore_screen.dart';
import 'package:roomie/screens/home_screen.dart';
import 'package:roomie/screens/profile_screen.dart';
import 'package:roomie/screens/setting_screen.dart';
import 'package:roomie/skip/Skip_fname.dart';
import 'package:roomie/skip/gender.dart';
import 'package:roomie/skip/interest.dart';
import 'package:roomie/skip/skip_pro.dart';
import 'package:roomie/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SkipFname.routeName: (context) => SkipFname(),
  SkipPro.routeName: (context) => SkipPro(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  GenderScreen.routeName: (context) => GenderScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  InterestScreen.routeName: (context) => InterestScreen(),
  ExploreScreen.routeName: (context) => ExploreScreen(),




};