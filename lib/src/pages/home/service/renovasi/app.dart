import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class RenovasiPage extends StatelessWidget {
  const RenovasiPage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.dark,
        title: const Text('Renovasi'),
        elevation: 0
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
                          image: AssetImage("assets/renovasi/image20.png")
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Listrik',
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
                          image: AssetImage("assets/renovasi/image21.png")
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Atap',
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
                          image: AssetImage("assets/renovasi/image22.png")
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Sanitari',
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
                          image: AssetImage("assets/renovasi/image23.png")
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Pengecetan',
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