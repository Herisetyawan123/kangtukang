import 'package:flutter/material.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/widget/card_pemesanan.dart';

class ActiveSection extends StatelessWidget {
  const ActiveSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            CardPemesanan(
              text: "Aktif",
              status: "active",
            ),
          ],
        ),
      ),
    );
  }
}
