import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kang_tukang/src/constants/session.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/user_model.dart';
import 'package:kang_tukang/src/routes/routes.dart';
import 'package:kang_tukang/src/utils/laoding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserModel user = UserModel();
  bool loading = true;
  Future getData() async {
    SharedPreferences session = await SharedPreferences.getInstance();
    setState(() {
      user = Session.getSession(session: session);
      loading = false;
    });
    // debugPrint(user.toJson().toString());
  }

  Future logout(BuildContext context) async {
    final session = await SharedPreferences.getInstance();
    Session.clear(session: session);
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, MyRoutes.signin);
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
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        backgroundColor: ThemeApp.white,
        foregroundColor: ThemeApp.dark,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
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
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey,
                          image: const DecorationImage(
                            image: AssetImage("assets/profile.png"),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      user.nama ?? 'Joko Susanto',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.email ?? 'email@email.com',
                      style: const TextStyle(
                        fontSize: 18,
                        color: ThemeApp.secDark,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/editprofile'),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.person_outline,
                                  color: ThemeApp.dark,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Edit Profil",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ThemeApp.dark,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ThemeApp.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/mypayment'),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.payment_outlined,
                                  color: ThemeApp.dark,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Pembayaran",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ThemeApp.dark,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ThemeApp.dark,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => logout(context),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.logout_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Keluar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
