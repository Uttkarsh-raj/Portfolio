import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../widgets/ui_components/circular_frame.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width * 0.1,
        ),
        Column(
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                  backgroundColor: const Color.fromARGB(255, 43, 43, 43),
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
                  backgroundColor: const Color.fromARGB(255, 43, 43, 43),
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
                  backgroundColor: const Color.fromRGBO(95, 95, 95, 1),
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
                  backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
                  radius: size.width * 0.0067,
                ),
              ),
              Positioned(
                bottom: size.width * 0.18,
                right: size.width * 0.124,
                child: CircularFrame(
                  offset: false,
                  shadows: true,
                  backgroundColor: const Color.fromARGB(255, 43, 43, 43),
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
                  backgroundColor: const Color.fromARGB(255, 43, 43, 43),
                  image: 'assets/logos/google-firebase.png',
                  radius: size.width * 0.0277,
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
