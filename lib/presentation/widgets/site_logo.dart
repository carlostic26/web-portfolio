import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/data_dev.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        '${Dev.name} - Flutter Dev',
        style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.yellowSecondary),
      ),
    );
  }
}
