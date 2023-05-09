import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../widgets/buttons/grey_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
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
                  Text(
                    'AboutMe( )',
                    style: TextStyle(
                      color: const Color.fromRGBO(57, 255, 20, 1),
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      'Hii i am Uttkarsh Raj and I am a Flutter developer currently in my second year of college, I have a passion for programming and a deep interest in mobile app development. Over the past year, I have gained valuable experience working with Flutter and other programming languages, honing my skills in app design and development. I am constantly seeking new challenges and opportunities to learn and grow as a developer, whether through personal projects or collaborations with other developers. In my free time, I enjoy exploring new technologies, experimenting with different programming languages, and staying up-to-date with the latest trends and developments in the tech industry',
                      style: TextStyle(
                        wordSpacing: 1,
                        color: Colors.white70,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Flexible(
          child: SizedBox(
            height: size.width * 0.126,
            width: size.width * 0.3,
            child: Column(
              children: [
                const GreyButton(
                  title: 'Flutter Developer',
                  assetimage: 'assets/logos/programming.png',
                ),
                SizedBox(
                  height: size.width * 0.014,
                ),
                const GreyButton(
                  title: 'Freelancer',
                  assetimage: 'assets/logos/brackets-curly.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
