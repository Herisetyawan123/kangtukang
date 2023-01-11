import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeApp.white,
        foregroundColor: ThemeApp.dark,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView(children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ThemeApp.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Tidak ada notifikasi",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
