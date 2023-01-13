import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/utils/laoding.dart';

class BangunanPage extends StatefulWidget {
  const BangunanPage({Key? key}) : super(key: key);

  @override
  State<BangunanPage> createState() => _BangunanPageState();
}

class _BangunanPageState extends State<BangunanPage> {
  bool loading = true;
  final List<Map> bangunan = List.generate(8, (index) => {"id": index, "name": "Bangunan $index"}).toList();
  final List<Map<String, String>> data = [
    {
      "name": "Kamar Tidur",
      "asset":"assets/bangunan/image28.png"
    },
    {
      "name": "Kamar Mandi",
      "asset":"assets/bangunan/image29.png"
    },
    {
      "name": "Ruang Tamu",
      "asset":"assets/bangunan/image31.png"
    },
    {
      "name": "Ruang Keluarga",
      "asset":"assets/bangunan/image30.png"
    },
    {
      "name": "Dapur",
      "asset":"assets/bangunan/image32.png"
    },
    {
      "name": "Rooftop",
      "asset":"assets/bangunan/image33.png"
    },
    {
      "name": "Cafe",
      "asset":"assets/bangunan/image34.png"
    },
    {
      "name": "Kolam Renang",
      "asset":"assets/bangunan/image35.png"
    },
  ]; 
  Future getData() async {
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konsultasi Bangunan"),
        foregroundColor: ThemeApp.dark,
        backgroundColor: ThemeApp.white,
        elevation: 0,
      ),
      body: loading
          ? SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomLoading(),
                ],
              ),
            )
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10
              ), 
              itemCount: data.length,
              itemBuilder: (BuildContext, index) {
                // print(data[index]["name"]);
                return BoxBangunan(title: data[index]["name"] as String, 
                asset: data[index]["asset"] as String
                );
              },),
          )
    );
  }
}

class BoxBangunan extends StatelessWidget {
  const BoxBangunan({
    Key? key,
    required this.title,
    required this.asset,
  }) : super(key: key);

  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ThemeApp.dark,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(asset),
                fit: BoxFit.contain
              )
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}