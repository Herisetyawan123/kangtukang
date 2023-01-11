import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class InputPrimary extends StatelessWidget {
  const InputPrimary({
    Key? key,
    required this.controllerTxt,
    this.pw = false,
  }) : super(key: key);

  final TextEditingController controllerTxt;
  final bool pw;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerTxt,
      obscureText: pw,
      decoration: InputDecoration(
        fillColor: ThemeApp.primary,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
