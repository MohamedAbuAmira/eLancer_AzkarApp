import 'package:flutter/material.dart';
import 'package:elancer_azkar_app/screens/about_screen.dart';
import 'package:elancer_azkar_app/screens/launch_screen.dart';
import 'package:elancer_azkar_app/screens/azkar_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      // if comment 'locale:' will select the lang that same as device lang,
      // with comment 'locale:' if the device lang not exist in the list, will select the first one
      locale: const Locale('ar'),
      // Select this lag in all cases, if exist in supportedLocales,
      // if not exist, will select the first one in supportedLocales
      title: 'Azkar App',
      initialRoute: '/launch_screen', //simlar to home:LaunchScreen()
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/azkar_screen': (context) => const AzkarScreen(),
        '/about_screen': (context) => AboutScreen(),
      },
    );
  }
}
