import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class KonsultasiPage extends StatefulWidget {
  const KonsultasiPage({Key? key}) : super(key: key);

  @override
  State<KonsultasiPage> createState() => _KonsultasiPageState();
}

class _KonsultasiPageState extends State<KonsultasiPage> {
  final List<Map<String, dynamic>> listKonsul = [
    {
      "asset": "assets/interior/image24.png",
      "title": 'Rumah',
    },
    {
      "asset": "assets/interior/image25.png",
      "title": 'Ruko',
    },
    {
      "asset": "assets/interior/image26.png",
      "title": 'Kos',
    },
    {
      "asset": "assets/interior/image27.png",
      "title": 'Cafe',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.dark,
        title: const Text("Konsultasi Interior"),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(35),
        child: ListView.builder(
          itemCount: listKonsul.length,
          itemBuilder: (BuildContext context, int i) => BoxKonsul(
            title: listKonsul[i]['title'],
            asset: listKonsul[i]['asset'],
            handleTap: () => Navigator.of(context).pushNamed(
              MyRoutes.penyedia,
            ),
          ),
        ),
      ),
    );
  }
}

class BoxKonsul extends StatelessWidget {
  const BoxKonsul({
    Key? key,
    required this.asset,
    required this.title,
    required this.handleTap,
  }) : super(key: key);

  final String asset;
  final String title;
  final void Function() handleTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 40,
        ),
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: ThemeApp.dark,
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(asset),
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
