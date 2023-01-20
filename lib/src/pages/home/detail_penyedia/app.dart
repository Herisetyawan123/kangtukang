// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class DetailPenyedia extends StatelessWidget {
  const DetailPenyedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: ThemeApp.primary,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage('assets/penyedia_jasa/image16.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pembangunan Rumah',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ThemeApp.dark),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Fajar Group",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: ThemeApp.dark,
                        )
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Jl. Merdeka no. 32",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Vector.png'),
                            )
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          "Tambahkan Favorit",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ThemeApp.dark),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Foto dan Video',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 295,
                      decoration: BoxDecoration(
                        color: ThemeApp.primary,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/image 42.png'),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 164,
                          height: 135,
                          decoration: BoxDecoration(
                            color: ThemeApp.primary,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/image 41.png'),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 164,
                          height: 135,
                          decoration: BoxDecoration(
                            color: ThemeApp.primary,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/image 43.png'),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 360,
                  height: 140,
                  decoration: BoxDecoration(
                    color: ThemeApp.primary,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/image44.png'),
                      fit: BoxFit.fill
                    )
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, MyRoutes.pembayaran),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: ThemeApp.dark,
                borderRadius: BorderRadius.circular(10)
              ),
              child:const Center(
                child: Text(
                  'Pesan',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}