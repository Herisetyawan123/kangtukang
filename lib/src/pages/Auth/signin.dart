import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/session.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/auth/login_model.dart';
import 'package:kang_tukang/src/models/user_model.dart';
import 'package:kang_tukang/src/pages/Auth/widget/input.dart';
import 'package:kang_tukang/src/pages/Auth/widget/input_pw.dart';
import 'package:kang_tukang/src/pages/Auth/widget/primary_btn.dart';
import 'package:kang_tukang/src/services/auth_service.dart';
import 'package:kang_tukang/src/utils/laoding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isCheck = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future setSession({required UserModel user}) async {
    SharedPreferences session = await SharedPreferences.getInstance();

    Session.setSession(session: session, userModel: user);
  }

  void handleSignin(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const CustomLoading(),
    );
    LoginModel loginModel = LoginModel(
      email: emailController.text,
      password: passwordController.text,
    );
    AuthService().sigIn(loginModel: loginModel).then((response) {
      if (response.status) {
        final user = UserModel.fromJson(response.data ?? {});
        setSession(user: user);
        Navigator.pop(context);
        Navigator.pushNamed(context, '/home');
      } else {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response.message),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/landing/houseKang.png',
                    width: 250.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "kangtukang",
                    style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: ThemeApp.primary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 90,
                    ),
                    child: Text(
                      "Mewujudkan Design dan Bangunan Yang Anda Inginkan",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ThemeApp.dark),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: ThemeApp.dark,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  InputField(
                    controller_: emailController,
                    placeholder: "Masukan Email",
                    icons: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputPassword(
                    controllerPw: passwordController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        hoverColor: ThemeApp.white,
                        checkColor: ThemeApp.white,
                        activeColor: ThemeApp.primary,
                        // fillColor: MaterialStateProperty(),
                        value: isCheck,
                        onChanged: (check) {
                          setState(() {
                            isCheck = check!;
                          });
                          debugPrint('check');
                        },
                      ),
                      const Text(
                        "Ingatkan Saya",
                        style: TextStyle(
                          color: ThemeApp.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  PrimaryBtn(
                    text: "Masuk",
                    onTap: () => handleSignin(context),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Jika Belum mempunyai akun?",
                        style: TextStyle(
                          color: ThemeApp.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/signup'),
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                            color: ThemeApp.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
