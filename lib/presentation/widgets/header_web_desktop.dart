import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/nav-items.dart';
import 'package:web_portfolio/config/data_dev.dart';
import 'package:web_portfolio/presentation/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Colors.transparent, CustomColor.bgLight1]),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTiles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    navTiles[i],
                    style: const TextStyle(
                        fontSize: 16, color: CustomColor.whitePrimary),
                  )),
            ),
        ],
      ),
    );
  }
}
