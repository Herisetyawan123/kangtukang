import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class RenovasiPage extends StatelessWidget {
  const RenovasiPage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.dark,
        title: const Text('Renovasi'),
        elevation: 0
      ),
    );
  }
}