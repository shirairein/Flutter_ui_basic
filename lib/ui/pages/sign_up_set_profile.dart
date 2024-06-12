import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';
import 'package:flutter_pertama/ui/widget/forms.dart';

class SignUpSetProfile extends StatelessWidget {
  const SignUpSetProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(bottom: 50, top: 100),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/logo4.jpg',
              ))),
            ),
            Text(
              'Join us and get\nyour next journey',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBackgroundColor,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/name.png'),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text('Samsudin',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CostumFromField(
                    title: 'Set A Pin(6 digit number)',
                    hintText: 'Pin',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up-set-ktp');
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
