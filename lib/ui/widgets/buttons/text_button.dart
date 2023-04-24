import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/app_colors.dart';

class CTextButton extends StatelessWidget {
  const CTextButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kcWhite,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
