import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class KonsultasiPage extends StatelessWidget {
  const KonsultasiPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.dark,
        title: const Text("Konsultasi"),
        elevation: 0,
      ),
      body: Container(
          margin: const EdgeInsets.all(35),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 35,
                ),
                width: MediaQuery.of(context).size.width,
                color: ThemeApp.dark,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text("Listrik"),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: ThemeApp.dark,
              ),
            ],
          )),
    );
  }
}
