import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';

class HomeService extends StatelessWidget {
  const HomeService({super.key,
  required this.icon,
  required this.label,
  required this.onTap,
  });
  final IconData icon;
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
            child: Icon(
              icon,
              size: 26,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            label, 
            style: blackTextStyle,
          )
        ],
      )
    );
  }
}