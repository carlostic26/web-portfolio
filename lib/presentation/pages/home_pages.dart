import 'dart:js' as js;

import 'package:web_portfolio/infrastructure/supabase.dart';
import 'package:web_portfolio/presentation/screens.dart';

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
  final sCProject = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
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
            child: Column(children: [
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

              //Main Section
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

              //Work Projects Section
              Container(
                key: navbarKeys[2],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.scaffoldBg,
                child: Column(children: [
                  //workmprojets title
                  const Text(
                    'Work Projects',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary),
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

                  const SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    width: screenWidth,
                    height: screenSize.height * 0.50,
                    child: FutureBuilder(
                      future: bringProjectDone(), // metodo
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const CircularProgressIndicator();
                        }
                        return Scrollbar(
                          controller: sCProject,
                          child: ListView.builder(
                            controller: sCProject,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: ProjectCardWidget(
                                    project: snapshot.data![index]),
                              );
                            },
                          ),
                        );

                        // ProjectCardWidget(project: snapshot.data!.first); // mostrar la informarcion;
                      },
                    ),
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
                ]),
              ),

              //Projects
              /*     Container(
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

                    const SizedBox(
                      height: 30,
                    ),
                    // trayendo datos de supaba
                   
                    //work project cardss
                    //TODO: use riverpod to this case use or handle the project model
                    // ProjectCardWidget(project: workProjectUtils.first), // mostrar la informarcion
                    //],

                    //Projects & Hobbies Section
                    // ProjectsSection(
                    //   key: navbarKeys[2],

                    // ),

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
             */
            ]),
          )));
    });
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
