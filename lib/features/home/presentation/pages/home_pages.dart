import 'dart:js' as js;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_portfolio/features/home/infrastructure/supabase.dart';
import 'package:web_portfolio/features/home/presentation/providers/providers.dart';
import 'package:web_portfolio/features/home/presentation/screens.dart';
import 'package:web_portfolio/features/shared/shared.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final sCProject = ScrollController();
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
                  //Header Section
                  Row(
                    children: [
                      Expanded(
                        //for web desktop visualization
                        child: isDesktop
                            ? HeaderDesktop(onNavMenuTap: (int navIndex) {
                                scrollToSection(navIndex);
                              })
                            : HeaderMobile(
                                //For mobile visualization
                                onLogoTap: () {},
                                onMenuTap: () {
                                  scaffoldKey.currentState?.openEndDrawer();
                                },
                              ),
                      ),
                      IconButton(
                        onPressed: ref.read(themeProvider.notifier).toggleTheme,
                        icon: ref.watch(themeProvider).isDark
                            ? const Icon(Icons.brightness_7)
                            : const Icon(Icons.brightness_4),
                      ),
                    ],
                  ),

                  //Main Section
                  if (isDesktop)
                    MainDesktop(
                      onContactTap: (int section) {
                        scrollToSection(section);
                      },
                    )
                  else
                    MainMobile(
                      onContactTap: (int section) {
                        scrollToSection(section);
                      },
                    ),

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

                        SizedBox(
                          width: screenWidth,
                          height: screenSize.height * 0.50,
                          child: FutureBuilder(
                            future: bringProjectDone(),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) const CustomLoading();
                              return Scrollbar(
                                controller: sCProject,
                                child: ListView.builder(
                                  controller: sCProject,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
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
                      ],
                    ),
                  ),
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
