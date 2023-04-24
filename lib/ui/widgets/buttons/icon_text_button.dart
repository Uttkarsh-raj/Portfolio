import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/app_colors.dart';
import 'package:portfolio/ui/widgets/buttons/text_button.dart';

class CIconTextButton extends StatelessWidget {
  const CIconTextButton(
      {super.key, required this.title, this.icon, this.assetImage});
  final String title;
  final IconData? icon;
  final String? assetImage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        if (icon != null)
          Icon(
            icon,
            color: kcWhite,
            size: size.width * 0.025,
          ),
        if (assetImage != null)
          Image(
            color: kcWhite,
            image: AssetImage(assetImage!),
            height: size.width * 0.025,
            width: size.width * 0.025,
          ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.008,
        ),
        CTextButton(title: title),
      ],
    );
  }
}
