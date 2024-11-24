import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uts_nofri_sumalenda/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENDOOR',
      theme: ThemeData(
        useMaterial3: true,
      ),
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: AppPages.INITIAL,
      routes: AppPages.routes,
    );
  }
}
