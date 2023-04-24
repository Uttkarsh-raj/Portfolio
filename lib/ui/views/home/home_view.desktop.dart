import 'package:portfolio/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/buttons/icon_text_button.dart';
import 'package:portfolio/ui/widgets/buttons/text_button.dart';
import 'package:portfolio/ui/widgets/ui_components/circular_frame.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            // height: size.width * 0.5,
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
                          children: [
                            const CTextButton(title: 'About'),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            const CTextButton(title: 'Skills'),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            const CTextButton(title: 'Projects'),
                            SizedBox(
                              width: size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CIconTextButton(
                            title: 'LinkedIn',
                            assetImage: 'assets/logos/linkedin.png',
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          const CIconTextButton(
                            title: 'Github',
                            assetImage: 'assets/logos/github.png',
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          const CIconTextButton(
                            title: 'Contact me',
                            icon: Icons.email_outlined,
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Hello, i am',
                                  style: TextStyle(
                                    color: kcWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.02,
                                ),
                                const Text(
                                  '< UTTKARSH',
                                  style: TextStyle(
                                    color: Color.fromRGBO(57, 255, 20, 1),
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.02,
                                ),
                                const Text(
                                  'RAJ />',
                                  style: TextStyle(
                                    color: Color.fromRGBO(57, 255, 20, 1),
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.02,
                                ),
                                const Text(
                                  'Mobile App Developer',
                                  style: TextStyle(
                                    color: kcWhite,
                                    fontSize: 37,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.028,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              '1+ ',
                                              style: TextStyle(
                                                color: kcMediumGrey,
                                                fontSize: 57,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'YEAR OF',
                                                  style: TextStyle(
                                                    color: kcMediumGrey,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  'EXPERIENCE',
                                                  style: TextStyle(
                                                    color: kcMediumGrey,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: size.width * 0.02,
                                            ),
                                            const Text(
                                              '5+ ',
                                              style: TextStyle(
                                                color: kcMediumGrey,
                                                fontSize: 57,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'PROJECTS COMPLETED',
                                                  style: TextStyle(
                                                    color: kcMediumGrey,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  'WITH FLUTTER',
                                                  style: TextStyle(
                                                    color: kcMediumGrey,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Flexible(
                          child: SizedBox(
                        height: size.width * 0.3,
                        width: double.maxFinite,
                        child: Stack(
                          children: [
                            Positioned(
                              top: size.width * 0.035,
                              left: size.width * 0.06,
                              child: CircularFrame(
                                offset: true,
                                shadows: true,
                                backgroundColor:
                                    const Color.fromARGB(255, 43, 43, 43),
                                image: 'assets/images/avatar.png',
                                radius: size.width * 0.12,
                              ),
                            ),
                            Positioned(
                              top: size.width * 0.2,
                              left: size.width * 0.06,
                              child: CircularFrame(
                                offset: false,
                                shadows: true,
                                backgroundColor:
                                    const Color.fromARGB(255, 43, 43, 43),
                                image: 'assets/logos/flutter.png',
                                radius: size.width * 0.034,
                              ),
                            ),
                            Positioned(
                              top: size.width * 0.059,
                              left: size.width * 0.0574,
                              child: CircularFrame(
                                offset: true,
                                shadows: false,
                                backgroundColor:
                                    const Color.fromRGBO(95, 95, 95, 1),
                                radius: size.width * 0.0057,
                              ),
                            ),
                            Positioned(
                              bottom: size.width * 0.1,
                              right: size.width * 0.114,
                              child: CircularFrame(
                                offset: true,
                                shadows: false,
                                backgroundColor: Colors.grey,
                                radius: size.width * 0.0024,
                              ),
                            ),
                            Positioned(
                              top: size.width * 0.03,
                              right: size.width * 0.13,
                              child: CircularFrame(
                                offset: true,
                                shadows: false,
                                backgroundColor:
                                    const Color.fromRGBO(32, 32, 32, 1),
                                radius: size.width * 0.0067,
                              ),
                            ),
                            Positioned(
                              bottom: size.width * 0.18,
                              right: size.width * 0.124,
                              child: CircularFrame(
                                offset: false,
                                shadows: true,
                                backgroundColor:
                                    const Color.fromARGB(255, 43, 43, 43),
                                image: 'assets/logos/android.png',
                                radius: size.width * 0.024,
                              ),
                            ),
                            Positioned(
                              top: size.width * 0.22,
                              right: size.width * 0.14,
                              child: CircularFrame(
                                offset: false,
                                shadows: true,
                                backgroundColor:
                                    const Color.fromARGB(255, 43, 43, 43),
                                image: 'assets/logos/google-firebase.png',
                                radius: size.width * 0.0277,
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
