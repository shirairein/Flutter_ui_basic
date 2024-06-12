import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';
import 'package:flutter_pertama/ui/widget/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: EdgeInsets.only(bottom: 50, top: 100),
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
                  const CostumFromField(
                    title: 'Full Named',
                    hintText: 'Your full name',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CostumFromField(
                    title: 'Email Address',
                    hintText: 'Your email address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CostumFromField(
                      title: 'Password',
                      hintText: 'Your password',
                      obscureText: true),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: blueTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up-set-profile');
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
