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
        title: const Text("Konsultasi Interior"),
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
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/interior/image24.png")
                        )
                      ),
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
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/interior/image25.png")
                        )
                      ),
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
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/interior/image26.png")
                        )
                      ),
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
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/interior/image27.png")
                        )
                      ),
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
