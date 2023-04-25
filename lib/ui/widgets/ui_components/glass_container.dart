import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:portfolio/ui/common/app_colors.dart';

class GlassMorphedContainer extends StatelessWidget {
  const GlassMorphedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GlassmorphicContainer(
      width: double.maxFinite,
      height: size.width * 0.097,
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
          const Color.fromARGB(255, 239, 243, 242).withOpacity(0),
          const Color.fromARGB(255, 230, 237, 236).withOpacity(0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: const [
            Text(
              'Hello, world!',
              style: TextStyle(
                fontSize: 20,
                color: kcWhite,
              ),
            ),
            Text('Hello, world!',
                style: TextStyle(
                  fontSize: 20,
                  color: kcWhite,
                )),
            Text(
              'Hello, world!',
              style: TextStyle(
                fontSize: 20,
                color: kcWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
