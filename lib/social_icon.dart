import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final String iconPath;
  final String url;

  const SocialIcon({super.key, required this.iconPath, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication),
      child: Image.asset(iconPath, height: 30),
    );
  }
}
