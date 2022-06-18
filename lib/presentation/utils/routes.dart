import 'package:facebook_clon/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

abstract class PageName {
  static const String home = '/home';

  static final Map<String, Widget Function(BuildContext)> routes = {
    PageName.home: (_) => const HomeScreen(),
    // '/': (_) =>const ,
  };
}
