import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/app_colors.dart';

class GreyButton extends StatelessWidget {
  const GreyButton({super.key, required this.title, required this.assetimage});
  final String title;
  final String assetimage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.056,
      width: size.width * 0.24,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 68, 68, 68),
        borderRadius: BorderRadius.circular(2),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(28, 28, 28, 1),
            blurRadius: 4,
            spreadRadius: 1.2,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 3, 0, 0),
            child: SizedBox(
              width: size.width * 0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: kcWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.6,
                    ),
                  ),
                  // SizedBox(
                  //   height: size.width * 0.008,
                  // ),
                  // const Text(
                  //   'Projects',
                  //   style: TextStyle(
                  //     color: Color.fromRGBO(57, 255, 20, 1),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w400,
                  //     decoration: TextDecoration.underline,
                  //     letterSpacing: 1,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Image.asset(
                assetimage,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
