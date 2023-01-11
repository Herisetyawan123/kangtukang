import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/pages/home/home/widget/input_srch.dart';
import 'package:kang_tukang/src/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Kang Tukang",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 20,
            ),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, "/notifikasi"),
              child: const Icon(
                Icons.notifications_outlined,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const InputSearch(),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: ThemeApp.banner,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(60, 0, 0, 0),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hari Ini",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 180,
                      margin: const EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: const Text(
                        "Yuk Pilih Tukang di Mitra Group",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Kategori Tukang",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Lainnya",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ThemeApp.secDark,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxDashboard(
                      assets: "assets/image1.png",
                      title: "Pembangunan",
                      handleTap: () =>
                          Navigator.pushNamed(context, MyRoutes.pembangunan),
                    ),
                    BoxDashboard(
                      assets: "assets/image2.png",
                      title: "Renovasi",
                      handleTap: () =>
                          Navigator.pushNamed(context, MyRoutes.renovasi),
                    ),
                    BoxDashboard(
                      assets: "assets/image3.png",
                      title: "Konsultasi Interior",
                      handleTap: () =>
                          Navigator.pushNamed(context, MyRoutes.konsultasi),
                    ),
                    BoxDashboard(
                      assets: "assets/image4.png",
                      title: "Konsultasi Bangunan",
                      handleTap: () =>
                          Navigator.pushNamed(context, MyRoutes.bangunan),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Rekomendasi Penyedia Jasa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ThemeApp.banner,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(60, 0, 0, 0),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Text(
                      "Fajar group",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Jl. Merdeka no. 32",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeApp.secDark,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BoxDashboard extends StatelessWidget {
  const BoxDashboard({
    Key? key,
    this.handleTap,
    required this.title,
    required this.assets,
  }) : super(key: key);

  final void Function()? handleTap;
  final String title;
  final String assets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTap,
      child: Container(
        width: 80,
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: ThemeApp.primary,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(assets),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
