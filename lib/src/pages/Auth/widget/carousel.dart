import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class CarouselLanding extends StatefulWidget {
  const CarouselLanding({Key? key}) : super(key: key);

  @override
  State<CarouselLanding> createState() => _CarouselLandingState();
}

class _CarouselLandingState extends State<CarouselLanding> {
  CarouselController controller = CarouselController();
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              initialPage: 0,
              autoPlay: true,
              aspectRatio: 2.0,
              onPageChanged: (val, _) {
                setState(() {
                  setState(() {
                    currentPos = val;
                  });
                  // controller.jumpToPage(val);
                });
              }),
          items: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/landing/1.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Membantu Masyarakat Untuk Membangun Bangunan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/landing/2.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Membantu Masyarakat Untuk Merenovasi Bangunan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/landing/3.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Memberikan Masyarakat Layanan Konsultasi Design Rumah Dan Interior",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentPos = 0;
                  controller.animateToPage(0);
                });
              },
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPos == 0 ? ThemeApp.primary : ThemeApp.dark,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentPos = 1;
                  controller.animateToPage(1);
                });
              },
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPos == 1 ? ThemeApp.primary : ThemeApp.dark,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentPos = 2;
                  controller.animateToPage(2);
                });
              },
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPos == 2 ? ThemeApp.primary : ThemeApp.dark,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
