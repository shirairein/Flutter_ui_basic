import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  const ProfileMenu({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Icon(
              icon,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              title,
            ),
          ],
        ),
      ),
    );
  }
}
