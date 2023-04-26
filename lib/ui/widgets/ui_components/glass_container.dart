import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:portfolio/ui/common/app_colors.dart';

class GlassMorphedContainer extends StatelessWidget {
  const GlassMorphedContainer(
      {super.key, required this.title, required this.discription});
  final String title;
  final String discription;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GlassmorphicContainer(
      width: double.maxFinite,
      height: size.width * 0.09,
      borderRadius: 8,
      blur: 2,
      alignment: Alignment.center,
      border: 2,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color.fromARGB(255, 228, 233, 233).withOpacity(0.2),
          const Color.fromARGB(255, 227, 232, 231).withOpacity(0.4),
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color.fromARGB(255, 239, 243, 242).withOpacity(0.1),
          const Color.fromARGB(255, 230, 237, 236).withOpacity(0.1),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 19,
                  color: kcWhite.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.006,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(discription,
                  style: TextStyle(
                    fontSize: 13.5,
                    color: kcWhite.withOpacity(0.8),
                    fontWeight: FontWeight.w100,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
