import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';

class HomeMore extends StatelessWidget {
  const HomeMore({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.onTap,
  });
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Image.asset(
                imageUrl,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              label,
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ],
        ));
  }
}
