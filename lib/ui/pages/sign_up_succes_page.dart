import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';

class SignUpSuccesPage extends StatelessWidget {
  const SignUpSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Akun Berhasil\nTerdaftar',
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
          'Grow your finance start\ntogether with us',
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
