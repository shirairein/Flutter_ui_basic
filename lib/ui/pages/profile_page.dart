import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/profile_menu.dart';
// import 'package:flutter_pertama/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
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
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 22,
              horizontal: 30,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
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
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Samsudin',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileMenu(
                  title: 'Edit Profile',
                  icon: Icons.person,
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) 
                    {
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenu(
                  title: 'My PIN',
                  icon: Icons.shield_outlined,
                  onTap: () {
                      Navigator.pushNamed(context, '/pin');
                  },
                ),
                ProfileMenu(
                  title: 'Wallet Settings',
                  icon: Icons.wallet,
                  onTap: () {},
                ),
                ProfileMenu(
                  title: 'My Rewards',
                  icon: Icons.verified,
                  onTap: () {},
                ),
                ProfileMenu(
                  title: 'Help Center',
                  icon: CupertinoIcons.sidebar_left,
                  onTap: () {},
                ),
                ProfileMenu(
                  title: 'Log Out',
                  icon: Icons.logout_outlined,
                  onTap: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Continue',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
