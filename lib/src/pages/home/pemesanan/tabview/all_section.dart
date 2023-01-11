import 'package:flutter/material.dart';

import '../widget/card_pemesanan.dart';

class AllSection extends StatelessWidget {
  const AllSection({
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
            SizedBox(
              height: 10,
            ),
            CardPemesanan(
              text: "Selesai",
              status: "done",
            ),
            SizedBox(
              height: 10,
            ),
            CardPemesanan(
              text: "Batal",
              status: "cancel",
            ),
          ],
        ),
      ),
    );
  }
}
