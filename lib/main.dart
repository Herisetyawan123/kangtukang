import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kang_tukang/src/app.dart';
import 'package:kang_tukang/src/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // inisialisasi Firebase
  await Firebase.initializeApp();
  // inisialisasi SharedPrefrences
  final session = await SharedPreferences.getInstance();
  if (session.getString("id") == null) {
    runApp(
      MyApp(
        index: MyRoutes.landing,
        routes: MyRoutes.data,
      ),
    );
  } else {
    runApp(
      MyApp(
        index: MyRoutes.home,
        routes: MyRoutes.data,
      ),
    );
  }
}
