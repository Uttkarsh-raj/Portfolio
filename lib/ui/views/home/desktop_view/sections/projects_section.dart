import 'package:flutter/material.dart';

import '../../../../widgets/ui_components/list_view.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 21, 21, 21),
            Color.fromRGBO(33, 33, 33, 1),
            Color.fromRGBO(66, 66, 66, 1),
            Color.fromRGBO(58, 58, 58, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 10, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.1,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.width * 0.06,
                    ),
                    const Text(
                      'Projects( )',
                      style: TextStyle(
                        color: Color.fromRGBO(57, 255, 20, 1),
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.2,
                      width: size.width * 0.83,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: CListView(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
