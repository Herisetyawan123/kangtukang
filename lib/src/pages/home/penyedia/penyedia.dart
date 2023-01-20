import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class PenyediaJasa extends StatelessWidget {
  const PenyediaJasa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 316,
            decoration: const BoxDecoration(
                color: ThemeApp.primary,
                image: DecorationImage(
                    image: AssetImage("assets/penyedia_jasa/image13.png"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Pembangunan Rumah",
                  style: TextStyle(
                    fontSize: 24,
                    color: ThemeApp.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Memberikan Jasa Pembangunan Yang Modern Dan Elegan',
                        style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Penyedia Jasa',
                        style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      BoxPenyediaJasa(
                        asset: 'assets/penyedia_jasa/image14.png',
                        jasa: 'Pembuatan Rumah',
                        group: 'Dari Fajar Group',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BoxPenyediaJasa(
                        asset: 'assets/penyedia_jasa/image15.png',
                        jasa: 'Pembuatan Rumah',
                        group: 'Dari Sukses Group',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BoxPenyediaJasa(
                        asset: 'assets/penyedia_jasa/image16.png',
                        jasa: 'Pembuatan Rumah',
                        group: 'Dari Bahagia Group',
                      ),
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class BoxPenyediaJasa extends StatelessWidget {
  const BoxPenyediaJasa(
      {Key? key, required this.asset, required this.jasa, required this.group})
      : super(key: key);

  final String asset;
  final String jasa;
  final String group;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, MyRoutes.detailPenyedia),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: ThemeApp.dark,
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: ThemeApp.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage(asset))),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jasa,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  group,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 139, 139, 139)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
