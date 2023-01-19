import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/ppembangunan_modal.dart';
import 'package:kang_tukang/src/routes/routes.dart';
import 'package:kang_tukang/src/services/pembangunan_service.dart';
import 'package:kang_tukang/src/utils/laoding.dart';

class PembangunanPage extends StatefulWidget {
  const PembangunanPage({Key? key}) : super(key: key);

  @override
  State<PembangunanPage> createState() => _PembangunanPageState();
}

class _PembangunanPageState extends State<PembangunanPage> {
  bool loading = true;
  List<PembangunanModel> pembangunan = [];
  Future getData() async {
    final data = await PembangunanService().getAll();
    setState(() {
      pembangunan = data;
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
        title: const Text("Pembangunan"),
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
          : Container(
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
                    title: pembangunan[index].title as String,
                    assets: pembangunan[index].assets as String,
                    handleTap: () => Navigator.pushNamed(context, MyRoutes.detailPembayaran),
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
