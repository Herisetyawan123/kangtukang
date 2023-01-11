import 'package:flutter/material.dart';

import '../../../../constants/theme.dart';

class CardPemesanan extends StatelessWidget {
  const CardPemesanan({
    Key? key,
    required this.text,
    required this.status,
  }) : super(key: key);
  final String status;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: ThemeApp.dark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/tukang1.png'),
                )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Pembangunan Rumah",
                    style: TextStyle(
                      color: ThemeApp.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fajar Group",
                    style: TextStyle(
                      color: ThemeApp.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jl. Merdeka no. 32",
                    style: TextStyle(
                      color: ThemeApp.white,
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: Icon(
                  Icons.close,
                  color: ThemeApp.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Waktu",
                      style: TextStyle(
                        color: ThemeApp.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "13.00",
                      style: TextStyle(
                        color: ThemeApp.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Waktu",
                      style: TextStyle(
                        color: ThemeApp.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "9 Desember 2024",
                      style: TextStyle(
                        color: ThemeApp.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: status == "active"
                        ? ThemeApp.bgGreen
                        : status == "done"
                            ? const Color.fromARGB(255, 237, 227, 129)
                            : const Color.fromARGB(255, 248, 136, 128),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: status == "active"
                          ? ThemeApp.txtGreen
                          : status == "done"
                              ? const Color.fromARGB(255, 142, 128, 0)
                              : const Color.fromARGB(255, 236, 18, 3),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
