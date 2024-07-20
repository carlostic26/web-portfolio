import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/size.dart';
import 'package:web_portfolio/config/data_dev.dart';
import 'package:web_portfolio/presentation/widgets/contact_section/contact_section.dart';
import 'package:web_portfolio/presentation/widgets/drawer_mobile.dart';
import 'package:web_portfolio/presentation/widgets/footer_section/footer.dart';
import 'package:web_portfolio/presentation/widgets/header_section/header_mobile.dart';
import 'package:web_portfolio/presentation/widgets/header_section/header_web_desktop.dart';
import 'package:web_portfolio/presentation/widgets/main_section/main_desktop.dart';
import 'package:web_portfolio/presentation/widgets/main_section/main_mobile.dart';
import 'package:web_portfolio/presentation/widgets/project_skill_section/projects_section.dart';
import 'package:web_portfolio/presentation/widgets/project_skill_section/skills_desktop.dart';
import 'package:web_portfolio/presentation/widgets/project_skill_section/skills_mobile.dart';
import 'dart:js' as js;

//TODO: Crear archivo de barril

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//TODO: Pregunta: este proyecto usa "controlers" para ciertas cosas, como el textfield,
// y como la linea 34 acontinucacion. Esto debe o no existir si usamos clean architecture?
// o es irrelevante

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= kMinDesktopWidth;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: isDesktop
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: Center(
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    key: navbarKeys.first,
                  ),
                  //Main Section
                  if (isDesktop)
                    HeaderDesktop(onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    }) //for web desktop visualization
                  else
                    HeaderMobile(
                      //For mobile visualization
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),

                  //Skills Section
                  if (isDesktop) const MainDesktop() else const MainMobile(),

                  //Skills
                  Container(
                    key: navbarKeys[1],
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
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //Projects & Hobbies Section
                  ProjectsSection(
                    key: navbarKeys[2],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //Contact
                  ContactSection(key: navbarKeys[3]),

                  const SizedBox(
                    height: 30,
                  ),

                  //Footer
                  const Footer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open blog page
      js.context.callMethod("open", [Dev.urlBlog]);

      return;
    }

    final key = navbarKeys[navIndex];

    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
