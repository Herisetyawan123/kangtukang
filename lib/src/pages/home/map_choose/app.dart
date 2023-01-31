import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/pages/Auth/widget/primary_btn.dart';
import 'package:kang_tukang/src/routes/routes.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ThemeApp.dark,
        title: const Text("Masukan Lokasi Anda"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: ThemeApp.primary,
          ),
          child: Column(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: OpenStreetMapSearchAndPick(
                  center: LatLong(-6.200000, 106.816666),
                  onPicked: (pickedData) {
                    print(pickedData.latLong.latitude);
                  },
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 228,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: const BoxDecoration(
                        color: ThemeApp.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Lokasi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          boxLocation(context),
                          const SizedBox(
                            height: 20,
                          ),
                          PrimaryBtn(
                            text: 'Selanjutnya',
                            onTap: () => Navigator.pushNamed(
                              context,
                              MyRoutes.pembayaran,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container boxLocation(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "JL. BEBAS NO. 21",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            Icons.location_on_outlined,
          ),
        ],
      ),
    );
  }
}
