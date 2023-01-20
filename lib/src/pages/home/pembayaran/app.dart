import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.dark,
        title: const Text("Pembayaran"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(
                  top: 35,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  children: const [
                    BoxMethodPayment(
                      title: 'Paypal',
                      asset: 'assets/method/paypal.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BoxMethodPayment(
                        title: 'Google Pay', asset: 'assets/method/google.png'),
                    SizedBox(
                      height: 20,
                    ),
                    BoxMethodPayment(
                      title: 'Apple Pay',
                      asset: 'assets/method/apple.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BoxMethodPayment(
                        title: '*** **** *** 567',
                        asset: 'assets/method/mastercard.png'),
                    SizedBox(
                      height: 20,
                    ),
                    BoxMethodPayment(
                        title: 'Cash', asset: 'assets/method/tunai.png'),
                  ],
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: ThemeApp.dark),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Rp 150.000,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, MyRoutes.detailPembayaran),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Pembayaran',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxMethodPayment extends StatelessWidget {
  const BoxMethodPayment({
    Key? key,
    required this.title,
    required this.asset,
  }) : super(key: key);

  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 40,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ThemeApp.primary,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(asset))),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ThemeApp.dark),
          ),
        ],
      ),
    );
  }
}
