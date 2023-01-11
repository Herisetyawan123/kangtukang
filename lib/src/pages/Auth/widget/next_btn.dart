import 'package:flutter/material.dart';
import '../../../constants/theme.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ThemeApp.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: ThemeApp.primary,
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, "/signin"),
          child: const Center(
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
