import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';
import 'package:kang_tukang/src/models/auth/register_model.dart';
import 'package:kang_tukang/src/models/user_model.dart';
import 'package:kang_tukang/src/pages/Auth/widget/input.dart';
import 'package:kang_tukang/src/pages/Auth/widget/input_pw.dart';
import 'package:kang_tukang/src/pages/Auth/widget/primary_btn.dart';
import 'package:kang_tukang/src/services/auth_service.dart';
import 'package:kang_tukang/src/utils/laoding.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfController = TextEditingController();

  void addUsers(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const CustomLoading(),
    );
    final user = RegisterModel(
      nama: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: addressController.text,
      password: passwordController.text,
      passwordConf: passwordConfController.text,
    );
    if (user.checkPassword()) {
      AuthService().signUp(registerModel: user).then((value) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Akun berhasil didaftarkan"),
            backgroundColor: ThemeApp.primary,
            duration: Duration(seconds: 3),
          ),
        );
      });
    } else {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password Harus Sama"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ThemeApp.dark,
        backgroundColor: ThemeApp.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
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
                  const Text(
                    "Daftar Akun",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: ThemeApp.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputField(
                    controller_: nameController,
                    icons: Icons.person_outline,
                    placeholder: "Masukan Nama Lengkap",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputField(
                    controller_: emailController,
                    icons: Icons.email_outlined,
                    placeholder: "Masukan Email",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputField(
                    controller_: phoneController,
                    icons: Icons.phone_in_talk_outlined,
                    placeholder: "Masukan No Telepon",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputField(
                    controller_: addressController,
                    icons: Icons.location_on_outlined,
                    placeholder: "Masukan Alamat",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputPassword(controllerPw: passwordController),
                  const SizedBox(
                    height: 25,
                  ),
                  InputPassword(
                    controllerPw: passwordConfController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryBtn(
                    text: "Daftar Akun",
                    onTap: () => addUsers(context),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
