import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/ui_components/list_item.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class CListView extends StatefulWidget {
  const CListView({super.key});

  @override
  State<CListView> createState() => _CListViewState();
}

class _CListViewState extends State<CListView> {
  int _focusedIndex = 0;

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  List<String> titles = [
    'Quev',
    'Re-Bin',
    'QR-Scanner',
    'Text-Scanner',
    'Library-CLI'
  ];
  List<String> discriptions = [
    'Quev is a very handy application which helps you locate the nearby Electric Vehicle\'s (EV) charging station. It also tells the shortest path to the charging station.',
    'Re-Bin is an application where you can donate your food which can help feed the hunger and in making compost. You get reward points for each donation and you can claim the rewards later.',
    'A simple application that can scan any QR code and it shows all the apps that can open the link. or directly launch on the brower.',
    'ScanIt is an application which allows you to either choose a picture or click a picture and then detects and displays all the text . Using the speaker button you can convert the text to speech.',
    'A Comand Line Interface for Library managemant using Golang and kobra-CLi where you can add remove get issued data and get a tabulated output.',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ScrollSnapList(
        onItemFocus: _onItemFocus,
        itemSize: size.width * 0.1,
        curve: Curves.ease,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CListItem(
                title: titles[index],
                discription: discriptions[index],
              ),
              SizedBox(
                width: size.width * 0.002,
              )
            ],
          );
        },
        itemCount: 5,
        dynamicItemSize: true,
        // dynamicSizeEquation: customEquation, //optional
      ),
    );
  }
}
