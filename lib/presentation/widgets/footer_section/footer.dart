import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/data_dev.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        'Made by ${Dev.name} with Flutter ${Dev.flutter_version}',
        style: const TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
