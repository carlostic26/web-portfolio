import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/size.dart';
import 'package:web_portfolio/domain/project_utils.dart';
import 'package:web_portfolio/presentation/widgets/drawer_mobile.dart';
import 'package:web_portfolio/presentation/widgets/project_card.dart';

//TODO: Crear archivo de barril

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

              /*     //for web desktop visualization
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'What can i do',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    //Platform and skills
                    if (isDesktop)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ), */

              //Projects
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.scaffoldBg,
                child: Column(
                  children: [
                    //workmprojets title
                    const Text(
                      'Work Projects',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),

                    //work project cardss
                    //TODO: use riverpod to this case use or handle the project model
                    ProjectCardWidget(project: workProjectUtils.first),
                  ],
                ),
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
