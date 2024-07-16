import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/nav-items.dart';
import 'package:web_portfolio/config/constants/size.dart';
import 'package:web_portfolio/config/constants/skill_items.dart';
import 'package:web_portfolio/config/data_dev.dart';
import 'package:web_portfolio/presentation/widgets/drawer_mobile.dart';
import 'package:web_portfolio/presentation/widgets/header_mobile.dart';
import 'package:web_portfolio/presentation/widgets/header_web_desktop.dart';
import 'package:web_portfolio/presentation/widgets/main_desktop.dart';
import 'package:web_portfolio/presentation/widgets/main_mobile.dart';
import 'package:web_portfolio/presentation/widgets/site_logo.dart';
import 'package:web_portfolio/presentation/widgets/skills_desktop.dart';
import 'package:web_portfolio/presentation/widgets/skills_mobile.dart';
import 'package:web_portfolio/presentation/widgets/styles/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      bool isDesktop = constraints.maxWidth >= kMinDesktopWidth;

      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: isDesktop ? null : const DrawerMobile(),
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Main

              //for web desktop visualization
              if (isDesktop)
                const HeaderDesktop()

              //For mobile visualization
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (isDesktop) const MainDesktop() else const MainMobile(),

              //Skills
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'What can i do',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //Platform and skills
                    SkillsDesktop(),

                    //TODO: skills for mobile

                    SkillsMobile(),
                  ],
                ),
              ),

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
    });
  }
}
