import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';

class TopUpSucces extends StatelessWidget {
  const TopUpSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Top Up\nWallet Berhasil',
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
          'Use the money wisely and\ngrow your finance',
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        CustomFilledButton(
            title: 'Back To Home',
            width: 183,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home-on-boarding', (route) => false);
            })
      ])),
    );
  }
}
