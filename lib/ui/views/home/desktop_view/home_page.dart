import 'package:flutter/material.dart';
import 'package:portfolio/ui/views/home/desktop_view/sections/about_section.dart';
import 'package:portfolio/ui/views/home/desktop_view/sections/intro_section.dart';
import 'package:portfolio/ui/views/home/desktop_view/sections/projects_section.dart';
import 'package:portfolio/ui/views/home/desktop_view/sections/skills_section.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/app_colors.dart';
import '../../../widgets/buttons/icon_text_button.dart';
import '../../../widgets/buttons/text_button.dart';
import '../../../widgets/ui_components/circular_frame.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  int navto = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void _scrollToSection(double position) {
      // TO-DO: navigation to a section
      if (navto != 0) {
        _scrollController.animateTo(
          900,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }

    // void _scrollToIndex(int index) {
    //   // _scrollController.animateToPage(index + 1,
    //   // duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    // }

    List<String> title = ['About', 'Skills', 'Projects'];

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              // height: size.width * 0.8,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 21, 21, 21),
                    Color.fromRGBO(33, 33, 33, 1),
                    Color.fromRGBO(66, 66, 66, 1),
                    Color.fromRGBO(58, 58, 58, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.repeated,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 10, 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.008,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'UTTKARSH',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                                color: Color.fromARGB(229, 255, 255, 255),
                              ),
                            ),
                            Text(
                              'RAJ',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return GestureDetector(
                              onTap: () {
                                // _scrollToIndex(index);
                                _scrollToSection(200);
                                // MaterialPageRoute(
                                //   builder: (context) => AboutSection(),
                                // );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: Row(children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          navto = 1;
                                        });
                                      },
                                      child: CTextButton(title: title[index]),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.03,
                                  ),
                                ]),
                              ),
                            );
                          }),
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'https://www.linkedin.com/in/uttkarsh-raj-a40a0b246/'));
                                },
                                child: const CIconTextButton(
                                  title: 'LinkedIn',
                                  assetImage: 'assets/logos/linkedin.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'https://github.com/Uttkarsh-raj'));
                                },
                                child: const CIconTextButton(
                                  title: 'Github',
                                  assetImage: 'assets/logos/github.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'https://twitter.com/__uttkarsh__'));
                                },
                                child: const CIconTextButton(
                                  title: 'Twitter',
                                  assetImage: 'assets/logos/twitter.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.12,
                    ),
                    //Introduction  Section
                    const IntroSection(),

                    //About Section
                    const AboutSection(),

                    SizedBox(
                      height: size.width * 0.046,
                    ),
                  ],
                ),
              ),
            ),

            //Skills Section
            const SkillsSection(),

            const ProjectsSection(),
          ],
        ),
      ),
    );
  }
}
