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
                  vertical: 25,
                  horizontal: 40,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ThemeApp.dark,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Rumah',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 40
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ThemeApp.dark
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.purple,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Ruko',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 40
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ThemeApp.dark
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Color.fromARGB(255, 172, 0, 103),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Kos',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 40
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ThemeApp.dark
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Color.fromARGB(255, 1, 143, 136),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Cafe',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      )
    );
  }
}
