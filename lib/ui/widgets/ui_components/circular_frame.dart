import 'package:flutter/material.dart';

class CircularFrame extends StatelessWidget {
  const CircularFrame(
      {super.key,
      this.image,
      required this.radius,
      required this.backgroundColor,
      required this.shadows,
      required this.offset});
  final String? image;
  final double radius;
  final Color backgroundColor;
  final bool shadows;
  final bool offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: (shadows)
            ? [
                BoxShadow(
                  color: const Color.fromRGBO(28, 28, 28, 1),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: (offset) ? const Offset(-3.2, -2.4) : Offset.zero,
                )
              ]
            : null,
      ),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: radius,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: (image != null)
                ? Image.asset(
                    image!,
                    fit: BoxFit.contain,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
