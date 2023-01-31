import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

import 'package:kang_tukang/src/routes/routes.dart';

class PembangunanPage extends StatefulWidget {
  const PembangunanPage({Key? key}) : super(key: key);

  @override
  State<PembangunanPage> createState() => _PembangunanPageState();
}

class _PembangunanPageState extends State<PembangunanPage> {
  List pembangunan = [
    {
      "title": "Rumah",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p1.png"
    },
    {
      "title": "Kolam renang",
      "description": null,
      "assets": "assets/pembangunan/p7.png"
    },
    {
      "title": "Pagar",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p2.png"
    },
    {
      "title": "Sumur Bor",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p6.png"
    },
    {
      "title": "Kolam Ikan",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p5.png"
    },
    {
      "title": "Taman",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p3.png"
    },
    {
      "title": "Kanopi",
      "description": "Memberikan Jasa Pembangunan Yang  Modern Dan Elegan",
      "assets": "assets/pembangunan/p4.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pembangunan"),
        foregroundColor: ThemeApp.dark,
        backgroundColor: ThemeApp.white,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: pembangunan.length,
          itemBuilder: (BuildContext context, index) {
            return BoxService(
              title: pembangunan[index]["title"] as String,
              assets: pembangunan[index]["assets"] as String,
              handleTap: () => Navigator.pushNamed(context, MyRoutes.penyedia),
            );
          },
        ),
      ),
    );
  }
}

class BoxService extends StatelessWidget {
  const BoxService(
      {Key? key, required this.title, required this.assets, this.handleTap})
      : super(key: key);

  final String assets;
  final String title;
  final void Function()? handleTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTap,
      child: Container(
        height: 200,
        width: 169,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ThemeApp.primary,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(assets),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: ThemeApp.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
