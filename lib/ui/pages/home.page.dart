import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CarouselSlider(
            items: const [
              Image(
                image: AssetImage(
                  'assets/image23.png',
                ),
              ),
              Image(
                image: AssetImage(
                  'assets/image24.png',
                ),
              ),
              Image(
                image: AssetImage(
                  'assets/image25.png',
                ),
              ),
            ],
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  // print(index);
                  currentIndex = index;
                });
              },
            ),
            carouselController: carouselController,
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: lightBackgroundColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(children: [
              Text(titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 20,
              ),
              Text(subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: currentIndex == 2 ? 40 : 20,
              ),
              currentIndex == 2
                  ? getStarted()
                  : Row(children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 0
                              ? purpleColor
                              : darkBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1
                              ? purpleColor
                              : darkBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 2
                              ? purpleColor
                              : darkBackgroundColor,
                        ),
                      ),
                      const Spacer(),
                      getContinueButton(),
                    ])
            ]),
          ),
        ]),
      ),
    );
  }

  Widget getStarted() {
    return Column(children: [
      CustomFilledButton(
        title: 'Get Started',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/home-on-boarding', (route) => false);
        },
      ),
      const SizedBox(
        height: 20,
      ),
      CostumTextButton(
        title: 'Sign In',
        onPressed: () {
          Navigator.pushNamed(context, '/sign-in');
        },
      )
    ]);
  }

  getContinueButton() {
    return SizedBox(
      width: 150,
      height: 50,
      child: TextButton(
        onPressed: () {
          carouselController.nextPage();
        },
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
        ),
        child: Text(
          'Continue',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
