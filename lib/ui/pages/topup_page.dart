import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';
import 'package:flutter_pertama/ui/widget/widget_topup.dart';
// import 'package:flutter_pertama/ui/widget/button.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home-on-boarding');
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: blackColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/Topup.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Angga Risky',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const WidgetTopup(
            imageurl: 'assets/BCA.png',
            title: 'BANK BCA',
            subtitle: '50 mins',
            isselected: true,
          ),
          const WidgetTopup(
            imageurl: 'assets/BNI.png',
            title: 'Bank BNI',
            subtitle: '50 mins',
          ),
          const WidgetTopup(
            imageurl: 'assets/Mandiri.png',
            title: 'Bank Mandiri',
            subtitle: '50 mins',
          ),
          const WidgetTopup(
            imageurl: 'assets/OCBC.png',
            title: 'Bank OCBC',
            subtitle: '50 mins',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
        ],
      ),
    );
  }
}
