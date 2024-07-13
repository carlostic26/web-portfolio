import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/nav-items.dart';
import 'package:web_portfolio/config/data_dev.dart';
import 'package:web_portfolio/presentation/widgets/header_mobile.dart';
import 'package:web_portfolio/presentation/widgets/header_web_desktop.dart';
import 'package:web_portfolio/presentation/widgets/site_logo.dart';
import 'package:web_portfolio/presentation/widgets/styles/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main

            const HeaderDesktop(), //for web desktop visualization
            HeaderMobile(
              onMenuTap: () {},
            ), //For mobile visualization

            //Skills
            Container(
                height: 500, width: double.maxFinite, color: Colors.black87),

            //Projects
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.scaffoldBg,
            ),

            //Contact
            Container(
                height: 500, width: double.maxFinite, color: Colors.black87),

            //Footer
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.scaffoldBg,
            ),
          ],
        ),
      ),
    );
  }
}
