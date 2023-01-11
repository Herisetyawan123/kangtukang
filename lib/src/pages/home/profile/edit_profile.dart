import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/session.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/user_model.dart';
import 'package:kang_tukang/src/pages/home/profile/widget/btn_profile.dart';
import 'package:kang_tukang/src/pages/home/profile/widget/input_primary.dart';
import 'package:kang_tukang/src/services/user_service.dart';
import 'package:kang_tukang/src/utils/laoding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  UserModel user = UserModel();

  Future getData() async {
    SharedPreferences session = await SharedPreferences.getInstance();
    setState(() {
      user = Session.getSession(session: session);
      nameController.text = user.nama ?? '';
      emailController.text = user.email ?? '';
      phoneController.text = user.phone ?? '';
      alamatController.text = user.address ?? '';
      passwordController.text = user.password ?? '';
    });
    // debugPrint(user.toJson().toString());
  }

  Future update(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const CustomLoading(),
    );
    UserModel newUser = UserModel(
      id: user.id,
      nama: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: alamatController.text,
      password: passwordController.text,
    );
    UserService()
        .updateUser(userId: user.id as String, userModel: newUser)
        .then((response) {
      if (response) {
        // debugPrint(newUser.toJson().toString());
        SharedPreferences.getInstance().then((newSession) {
          Session.setSession(session: newSession, userModel: newUser);
          getData().then((_) {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (_) => Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    // width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.4,
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/success.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Data telah diperbarui",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
        });
      } else {
        Navigator.pop(context);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Terjadi Kesalahan"),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
          ),
        );
      }
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
        backgroundColor: ThemeApp.white,
        foregroundColor: ThemeApp.dark,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  InputPrimary(
                    controllerTxt: nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPrimary(
                    controllerTxt: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPrimary(
                    controllerTxt: phoneController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPrimary(
                    controllerTxt: alamatController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPrimary(
                    controllerTxt: passwordController,
                    pw: true,
                  ),
                ],
              ),
              BtnProfile(
                text: "Perbarui",
                handleTap: () => update(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
