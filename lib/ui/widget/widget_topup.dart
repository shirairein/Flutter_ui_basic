import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';

class WidgetTopup extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subtitle;
  final bool? isselected;
  const WidgetTopup({
    super.key,
    required this.imageurl,
    required this.title,
    required this.subtitle,
    this.isselected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          color: isselected! ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageurl,
            width: 80,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                subtitle,
                style: greyTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
