import 'package:flutter/material.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key, required this.image, this.color});
  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      // color: Colors.red,
      height: size.width * 0.1,
      width: size.width * 0.08,
      child: Center(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          color: (color != null) ? color : null,
        ),
      ),
    );
  }
}
