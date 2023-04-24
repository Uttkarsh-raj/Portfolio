import 'package:portfolio/ui/common/app_colors.dart';
import 'package:portfolio/ui/common/app_constants.dart';
import 'package:portfolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/buttons/icon_text_button.dart';
import 'package:portfolio/ui/widgets/buttons/text_button.dart';
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
            height: 760,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 10, 8),
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
