import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/pages/home.page.dart';
import 'package:flutter_pertama/ui/pages/home_onboarding.dart';
import 'package:flutter_pertama/ui/pages/pin_page.dart';
import 'package:flutter_pertama/ui/pages/profil_edit_success.dart';
import 'package:flutter_pertama/ui/pages/profile_edit_page.dart';
import 'package:flutter_pertama/ui/pages/profile_page.dart';
import 'package:flutter_pertama/ui/pages/sign_in_page.dart';
import 'package:flutter_pertama/ui/pages/sign_up_page.dart';
import 'package:flutter_pertama/ui/pages/sign_up_set_ktp.dart';
import 'package:flutter_pertama/ui/pages/sign_up_set_profile.dart';
import 'package:flutter_pertama/ui/pages/sign_up_succes_page.dart';
// import 'package:flutter_pertama/coba.dart';
import 'package:flutter_pertama/ui/pages/splash_screen.dart';
import 'package:flutter_pertama/ui/pages/topup_amount.dart';
import 'package:flutter_pertama/ui/pages/topup_page.dart';
import 'package:flutter_pertama/ui/pages/topup_succes.dart';
// import 'ui/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: lightBackgroundColor,
            appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: lightBackgroundColor,
              titleTextStyle: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              elevation: 0,
            )),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetProfile(),
          '/sign-up-set-ktp': (context) => const SignUpSetKtp(),
          '/sign-up-set-success': (context) => const SignUpSuccesPage(),
          '/home-on-boarding': (context) => const HomeOnBoarding(),
          '/profile-page': (context) => const ProfilePage(),
          '/pin':(context) => const PinPage(),
          '/profile-edit':(context) => const ProfileEdit(),
          '/profile-edit-success':(context) => const ProfilEditSuccess(),
          '/topup-page':(context) => const TopUpPage(),
          '/topup-amount':(context) => const TopUpAmount(),
          '/topup-succes':(context) => const TopUpSucces(),
        });
  }
}
