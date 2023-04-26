import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../widgets/ui_components/skills_tab.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(32, 32, 32, 1),
            Color.fromRGBO(23, 23, 23, 1),
            Color.fromRGBO(18, 18, 18, 1),
            Color.fromRGBO(18, 18, 18, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, size.width * 0.05, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.13,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Skills( )',
                      style: TextStyle(
                        color: Color.fromRGBO(57, 255, 20, 1),
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.06,
                    ),
                    SizedBox(
                      width: size.width * 0.72,
                      child: Row(
                        children: [
                          SizedBox(
                            height: size.width * 0.014,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/c++.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/Dart-logo.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/golang.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/flutter.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/google-firebase.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/built-with-appwrite.png',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const SkillsTab(
                            image: 'assets/logos/github.png',
                            color: kcWhite,
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.1,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
