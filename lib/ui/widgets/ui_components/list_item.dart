import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/ui_components/glass_container.dart';

class CListItem extends StatelessWidget {
  const CListItem({super.key, required this.title, required this.discription});
  final String title;
  final String discription;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.amber,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 239, 243, 242).withOpacity(0.2),
        ),
      ),
      height: size.width * 0.19,
      width: size.width * 0.17,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/logos/programming.png',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GlassMorphedContainer(
              title: title,
              discription: discription,
            ),
          ),
        ],
      ),
    );
  }
}
