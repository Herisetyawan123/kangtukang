import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class DetailPenyedia extends StatelessWidget {
  const DetailPenyedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
      ),
    );
  }
}