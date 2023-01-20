import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Detail Pembayaran'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 316,
              decoration: const BoxDecoration(
                color: ThemeApp.dark,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 34),
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/success.png"))),
                      ),
                      const Text(
                        'Pembayaran Sukses',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 13,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 2, 0, 46),
                    ),
                  )
                ],
              )
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 35,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(60, 0, 0, 0),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: ThemeApp.primary,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Rp 170.000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Divider(
                                color: ThemeApp.dark,
                              ),
                              Text(
                                'Nomor Orderan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '623142520324'
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Tanggal & Waktu',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '9 Desember 2023 | 13.00'
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Pembayaran',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Kartu Kredit'
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, MyRoutes.home),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        ),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: ThemeApp.dark,
                        ),
                        child: const Center(
                          child: Text(
                            'Cek Order',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, MyRoutes.home),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        ),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: ThemeApp.primary,
                        ),
                        child: const Center(
                          child: Text(
                            'Kembali Ke Beranda',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: ThemeApp.dark),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        )
    );
  }
}
