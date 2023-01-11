import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class BtnProfile extends StatelessWidget {
  const BtnProfile({
    Key? key,
    required this.text,
    required this.handleTap,
  }) : super(key: key);

  final String text;
  final void Function() handleTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleTap(),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: ThemeApp.dark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: ThemeApp.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
