import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/pages/home/home/widget/input_srch.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/tabview/active_section.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/tabview/all_section.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/tabview/cancel_section.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/tabview/done_section.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/widget/card_pemesanan.dart';

class PemesananPage extends StatelessWidget {
  const PemesananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: ThemeApp.dark,
          backgroundColor: ThemeApp.white,
          title: const Text(
            "Pemesanan",
          ),
          centerTitle: true,
          elevation: 0,
          bottom: TabBar(
            labelColor: ThemeApp.primary,
            // indicatorColor: ThemeApp.dark,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              color: ThemeApp.dark,
            ),
            isScrollable: true,
            tabs: [
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: const Text(
                    "Semua",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: const Text(
                    "Aktif",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: const Text(
                    "Selesai",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: const Text(
                    "Batal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AllSection(),
            ActiveSection(),
            DoneSection(),
            CancelSection()
          ],
        ),
      ),
    );
  }
}
