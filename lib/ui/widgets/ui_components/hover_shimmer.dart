import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:shimmer/shimmer.dart';

class HoverShimmer extends StatelessWidget {
  const HoverShimmer(
      {super.key,
      required this.child,
      required this.shimmerRadius,
      required this.animatedPadding});
  final Widget child;
  final double shimmerRadius;
  final bool animatedPadding;

  @override
  Widget build(BuildContext context) {
    return HoverCrossFadeWidget(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(milliseconds: 900),
      firstCurve: Curves.easeInOut,
      secondCurve: Curves.decelerate,
      firstChild: child,
      secondChild: AnimatedContainer(
        duration: const Duration(milliseconds: 10),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            child,
            Padding(
              padding: animatedPadding
                  ? const EdgeInsets.fromLTRB(4, 3, 0, 0)
                  : const EdgeInsets.all(0),
              child: Shimmer.fromColors(
                period: const Duration(seconds: 1),
                child: CircleAvatar(
                  radius: shimmerRadius,
                ),
                baseColor: Colors.transparent,
                highlightColor: Colors.white.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
