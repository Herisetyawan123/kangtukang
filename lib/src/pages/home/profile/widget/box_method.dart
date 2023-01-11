import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class BoxMethod extends StatelessWidget {
  const BoxMethod({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint("ok"),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          color: ThemeApp.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: ThemeApp.dark,
                    fontWeight: FontWeight.bold,
                  ),
                  // overflow: TextOverflow.clip,
                ),
              ],
            ),
            const Text(
              "Terhubung",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
