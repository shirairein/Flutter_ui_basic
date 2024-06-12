import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';
import 'package:flutter_pertama/ui/widget/forms.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Foto',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: blackColor,
          ),
        ),
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
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CostumFromField(title: 'Username'),
                const SizedBox(
                  height: 20,
                ),
                const CostumFromField(title: 'Full Name'),
                const SizedBox(
                  height: 20,
                ),
                const CostumFromField(title: 'Email Address'),
                const SizedBox(
                  height: 20,
                ),
                const CostumFromField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile-edit-success');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
