import 'package:flutter/cupertino.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/home_more.dart';

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      padding: const EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Do More With Us',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 40.0,
            runSpacing: 20.0,
            children: [
              HomeMore(
                imageUrl: 'assets/fi_smartphone.jpg',
                label: 'Data',
                onTap: () {},
              ),
              HomeMore(
                imageUrl: 'assets/fi_droplet.jpg',
                label: 'Water',
                onTap: () {},
              ),
              HomeMore(
                imageUrl: 'assets/fi_twitch.jpg',
                label: 'Stream',
                onTap: () {},
              ),
              HomeMore(
                imageUrl: 'assets/fi_tv.jpg',
                label: 'Movie',
                onTap: () {},
              ),
              HomeMore(
                imageUrl: 'assets/fi_coffee.jpg',
                label: 'Food',
                onTap: () {},
              ),
              HomeMore(
                imageUrl: 'assets/fi_globe.jpg',
                label: 'Travel',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
