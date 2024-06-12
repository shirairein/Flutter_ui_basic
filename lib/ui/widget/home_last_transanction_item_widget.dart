import 'package:flutter/material.dart';
// import 'package:flutter_pertama/shared/share_methods.dart';
import 'package:flutter_pertama/shared/theme.dart';

class HomeTransanction extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;
  final String value;
  final Color color;
  const HomeTransanction(
      {super.key,
      required this.title,
      required this.time,
      required this.icon,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(children: [
        Icon(icon, color: color),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            Text(
              time,
              style: greyTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
              ),
            ),
          ]),
        ),
        Text(value,
            style: blackTextStyle.copyWith(
              fontSize: 13,
            ))
      ]),
    );
  }
}
