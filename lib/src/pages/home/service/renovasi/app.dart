import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class RenovasiPage extends StatefulWidget {
  const RenovasiPage({Key? key}) : super(key: key);

  @override
  State<RenovasiPage> createState() => _RenovasiPageState();
}

class _RenovasiPageState extends State<RenovasiPage> {
  final List<Map<String, dynamic>> listRenov = [
    {
      "asset": "assets/renovasi/image20.png",
      "title": 'Listrik',
    },
    {
      "asset": "assets/renovasi/image21.png",
      "title": 'Atap',
    },
    {
      "asset": "assets/renovasi/image22.png",
      "title": 'Sanitari',
    },
    {
      "asset": "assets/renovasi/image23.png",
      "title": 'Pengecetan',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: ThemeApp.dark,
            title: const Text('Renovasi'),
            elevation: 0),
        body: Container(
          padding: const EdgeInsets.all(35),
          child: ListView.builder(
            itemCount: listRenov.length,
            itemBuilder: (BuildContext context, int i) {
              return BoxRenov(
                asset: listRenov[i]["asset"],
                title: listRenov[i]["title"],
                handleTap: () => Navigator.pushNamed(
                  context,
                  MyRoutes.penyedia,
                ),
              );
            },
          ),
        ));
  }
}

class BoxRenov extends StatelessWidget {
  const BoxRenov({
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
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 40,
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
                  image: DecorationImage(image: AssetImage(asset))),
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
