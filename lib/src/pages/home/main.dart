import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/session.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/user_model.dart';
import 'package:kang_tukang/src/pages/home/home/home.dart';
import 'package:kang_tukang/src/pages/home/home/widget/input_srch.dart';
import 'package:kang_tukang/src/pages/home/pemesanan/main.dart';
import 'package:kang_tukang/src/pages/home/pesan/main.dart';
import 'package:kang_tukang/src/pages/home/profile/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int indexPage = 0;

  List<Widget> pages = const [
    HomePage(),
    PemesananPage(),
    PesanPage(),
    ProfilePage(),
  ];
  Future getData() async {
    SharedPreferences ref = await SharedPreferences.getInstance();
    UserModel user = Session.getSession(session: ref);
    debugPrint(user.toJson().toString());
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ThemeApp.primary,
          iconSize: 35,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: const Icon(Icons.home_rounded),
              label: indexPage == 0 ? 'Beranda' : '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.assignment_outlined),
              activeIcon: const Icon(Icons.assignment_rounded),
              label: indexPage == 1 ? 'Riwayat' : '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.chat_bubble_outline),
              activeIcon: const Icon(Icons.chat_bubble_rounded),
              label: indexPage == 2 ? 'Profil' : '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outlined),
              activeIcon: const Icon(Icons.person_rounded),
              label: indexPage == 3 ? 'Profil' : '',
            ),
          ],
          currentIndex: indexPage,
          onTap: (value) {
            setState(() {
              indexPage = value;
            });
            // debugPrint('$value');
          },
          selectedItemColor: ThemeApp.dark,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
        ),
      ),
      body: pages[indexPage],
    );
  }
}
