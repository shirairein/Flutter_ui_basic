import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';

class CostumFromField extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  
  const CostumFromField(
      {super.key,
      required this.title,
       this.obscureText = false,
      this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: blackTextStyle.copyWith(
          fontWeight: semiBold,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        controller: controller,
        obscureText: obscureText,
        obscuringCharacter: obscureText ? '*' : ' ',
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            )),
      ),
    ]);
  }
}
