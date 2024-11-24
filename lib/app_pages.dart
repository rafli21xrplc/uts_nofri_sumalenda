import 'package:flutter/material.dart';
import 'package:uts_nofri_sumalenda/screen/detail_screen.dart';
import 'package:uts_nofri_sumalenda/screen/home_screen.dart';

class AppPages {
  static const INITIAL = '/home';

  static Map<String, WidgetBuilder> routes = {
    '/home': (context) => const HomeScreen(),
    '/detail': (context) => const DetailScreen(),
  };
}
