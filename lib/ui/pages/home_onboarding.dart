import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pertama/shared/share_methods.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/home_friendly.dart';
import 'package:flutter_pertama/ui/widget/home_last_transanction_item_widget.dart';
import 'package:flutter_pertama/ui/widget/home_send_widget.dart';
import 'package:flutter_pertama/ui/widget/home_services.dart';
import 'package:flutter_pertama/ui/pages/more_dialog.dart';
// import 'package:intl/intl.dart';

class HomeOnBoarding extends StatelessWidget {
  const HomeOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          selectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/layers.png',
                color: blueColor,
                width: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/text.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/trending.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/gift.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          'assets/circle.png',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            buildProfile(context),
            buildContent(),
            const SizedBox(
              height: 10,
            ),
            buildlevel(),
            const SizedBox(
              height: 20,
            ),
            ...buildSomething(
              context,
            ),
            const SizedBox(
              height: 30,
            ),
            ...buildTransaction(),
            const SizedBox(
              height: 20,
            ),
            ...buildSendAgain(),
            const SizedBox(
              height: 30,
            ),
            ...buildFriendlyTips(),
          ]),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Selamat Datang,',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              )),
          const SizedBox(
            height: 2,
          ),
          Text('Samsudin',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              )),
        ]),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile-page');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/name.png',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ))
      ]),
    );
  }

  Widget buildContent() {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.all(35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: AssetImage(
              'assets/Rectangle.png',
            ),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Samsudin',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1234',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Text('Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              )),
          Text(
            // 'Rp 2.500.000',
            formatCurrency(25000000),
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
              letterSpacing: 1,
            ),
          )
        ]));
  }

  Widget buildlevel() {
    return Container(
      // width: double.infinity,
      // height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                // 'of Rp 20.000',
                formatCurrency(200000),
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                width: 11,
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 7,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: greyColor,
            ),
          ),
        ],
      ),
    );
  }

  buildSomething(BuildContext context) {
    return [
      Text(
        'Do Something',
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeService(
            onTap: () {
              Navigator.pushNamed(context, '/topup-page');
            },
            label: 'Top Up',
            icon: Icons.file_download_outlined,
          ),
          HomeService(
            onTap: () {},
            label: 'Send',
            icon: Icons.repeat,
          ),
          HomeService(
            onTap: () {},
            label: 'Withdraw',
            icon: Icons.file_upload_outlined,
          ),
          HomeService(
            onTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => const MoreDialog(),
              );
            },
            label: 'More',
            icon: Icons.grid_view,
          )
        ],
      )
    ];
  }

  buildTransaction() {
    return [
      Text('Latest Transaction',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          )),
      const SizedBox(
        height: 16,
      ),
      Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Column(
            children: [
              HomeTransanction(
                icon: Icons.file_download_outlined,
                color: blueColor,
                title: 'Top up',
                time: 'Yesterday',
                value: '-${formatCurrency(100000, symbol: '')}',
              ),
              HomeTransanction(
                icon: CupertinoIcons.gift,
                color: purpleicon,
                title: 'Cashback',
                time: 'Sep 11',
                value: '+${formatCurrency(22000, symbol: '')}',
              ),
              HomeTransanction(
                icon: Icons.file_upload_outlined,
                color: greenColor,
                title: 'Withdraw',
                time: 'Sep 2',
                value: '-${formatCurrency(5000, symbol: '')}',
              ),
              HomeTransanction(
                icon: Icons.repeat,
                color: purpleColor,
                title: 'Transfer',
                time: 'Aug 27',
                value: '-${formatCurrency(123500, symbol: '')}',
              ),
              HomeTransanction(
                icon: CupertinoIcons.shopping_cart,
                color: orangeeicon,
                title: 'Electric',
                time: 'Feb 18',
                value: '-${formatCurrency(12300000, symbol: '')}',
              ),
            ],
          ))
    ];
  }

  buildSendAgain() {
    return [
      Text('Send Again',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          )),
      const SizedBox(
        height: 16,
      ),
      const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            HomeSend(imageUrl: 'assets/Name1.png', title: 'Siska'),
            HomeSend(imageUrl: 'assets/Name2.png', title: 'Udin'),
            HomeSend(imageUrl: 'assets/Name3.png', title: 'Sukijan'),
            HomeSend(imageUrl: 'assets/name.png', title: 'Agus'),
            HomeSend(imageUrl: 'assets/name.png', title: 'Agus'),
          ],
        ),
      )
    ];
  }

  buildFriendlyTips() {
    return [
      Text(
        'Friendly Tips',
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
      ),
      const SizedBox(
        height: 14,
      ),
      const Wrap(
        spacing: 70.0,
        runSpacing: 20.0,
        children: [
          HomeFriendly(
            imageUrl: 'assets/image16.png',
            title: 'Best To Tips For Using A Credit Card',
            url: 'https://flutter.dev',
          ),
          HomeFriendly(
            imageUrl: 'assets/image17.png',
            title: 'Spot the good pie of finance model',
            url: 'https://flutter.dev',
          ),
          HomeFriendly(
            imageUrl: 'assets/image18.png',
            title: 'Great hack to get better advices',
            url: 'https://flutter.dev',
          ),
          HomeFriendly(
            imageUrl: 'assets/image19.png',
            title: 'Save more penny buy this instead',
            url: 'https://flutter.dev',
          ),
        ],
      )
    ];
  }
}
