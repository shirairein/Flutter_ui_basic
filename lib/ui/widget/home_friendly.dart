import 'package:flutter/material.dart';
// import 'package:flutter_pertama/shared/share_methods.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFriendly extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeFriendly(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  Future<void> _launchUrl(BuildContext context) async {
    Uri _uri = Uri.parse(url.toString());
    if (!await launchUrl(_uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // showDefaultSnackbarFlutter(context, url);
        // showCustomSnackbar(context, url);
        _launchUrl(context);
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whiteColor),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                imageUrl,
                width: 155,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
