import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.index, required this.routes})
      : super(key: key);

  final String index;
  final Map<String, WidgetBuilder> routes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kang Tukang',
      initialRoute: index,
      routes: routes,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeApp.primary,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: ThemeApp.dark,
            size: 40,
          ),
          backgroundColor: ThemeApp.primary,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
