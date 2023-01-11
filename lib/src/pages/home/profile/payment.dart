import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/pages/home/profile/widget/box_method.dart';
import 'package:kang_tukang/src/pages/home/profile/widget/btn_profile.dart';

class PaymentAddPage extends StatelessWidget {
  const PaymentAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeApp.white,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
        title: const Text(
          "Pembayaran",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: const [
                  BoxMethod(
                    title: "Paypal",
                    image: "assets/method/paypal.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BoxMethod(
                    title: "Google Play",
                    image: "assets/method/google.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BoxMethod(
                    title: "Apple Play",
                    image: "assets/method/apple.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BoxMethod(
                    title: "*** *** *** *** 7214",
                    image: "assets/method/mastercard.png",
                  ),
                ],
              ),
            ),
            // Column(
            //   children: [],
            // ),
            BtnProfile(
              text: "Tambah",
              handleTap: () => debugPrint("ok"),
            ),
          ],
        ),
      ),
    );
  }
}
