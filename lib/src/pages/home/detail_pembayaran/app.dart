// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class DetailPembayaran extends StatelessWidget {
  const DetailPembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: ThemeApp.dark,
          title: const Text('Detail Pembayaran'),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(
                top: 35,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  const DetailTukang(
                    jenis: 'Pembangunan Rumah',
                    mitra: 'Fajar Group',
                    waktu: '9 Des 2023 | 13.00',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const DetailBiaya(
                    tukangpay: 'Rp 150.000',
                    layananpay: 'Rp 20.000',
                    total: 'Rp 170.000',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const JenisPayment(
                    asset: 'assets/method/mastercard.png',
                    title: '*** *** ** *** 657',
                  )
                ],
              ),
            )),
            InkWell(
              onTap: () => Navigator.pushNamed(context, MyRoutes.suksesPembayaran),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: ThemeApp.dark,
                  ),
                  child: const Center(
                    child: Text(
                      'Konfirmasi Pembayaran',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class JenisPayment extends StatelessWidget {
  const JenisPayment({Key? key, required this.asset, required this.title, required})
      : super(key: key);

  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: ThemeApp.primary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(asset))),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Ganti',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailBiaya extends StatelessWidget {
  const DetailBiaya({
    Key? key, required this.tukangpay, required this.layananpay, required this.total
  }) : super(key: key);

  final String tukangpay;
  final String layananpay;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: ThemeApp.primary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pembayaran Tukang',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                tukangpay,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              const Text(
                'BIAYA LAYANAN',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                layananpay,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 15,
            child: Divider(
              color: ThemeApp.dark,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                total,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailTukang extends StatelessWidget {
  const DetailTukang({
    Key? key, required this.jenis, required this.mitra, required this.waktu
  }) : super(key: key);

  final String jenis;
  final String mitra;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: ThemeApp.primary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Jenis Tukang',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                jenis,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Mitra Tukang',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                mitra,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Waktu & tanggal',
                style: TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                waktu,
                style: const TextStyle(
                  color: ThemeApp.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
