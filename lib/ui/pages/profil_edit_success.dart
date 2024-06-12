import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';

class ProfilEditSuccess extends StatelessWidget {
  const ProfilEditSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Nice Update\nYour Profil Success',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Your Data Has Been Updated',
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        CustomFilledButton(
            title: 'Get Started',
            width: 183,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home-on-boarding', (route) => false);
            })
      ])),
    );
  }
}
