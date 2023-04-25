import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class CListView extends StatefulWidget {
  const CListView({super.key});

  @override
  State<CListView> createState() => _CListViewState();
}

class _CListViewState extends State<CListView> {
  List<int> data = [];
  int _focusedIndex = 0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      data.add(Random().nextInt(100) + 1);
    }
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    //horizontal
    return Container(
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.lightBlueAccent,
            child: Text("i:$index\n${data[index]}"),
          )
        ],
      ),
    );
  }

  List<Container> l = [
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollSnapList(
        onItemFocus: _onItemFocus,
        itemSize: 150,
        itemBuilder: (context, index) {
          return l[index];
        },
        itemCount: 7,
        dynamicItemSize: true,
        // dynamicSizeEquation: customEquation, //optional
      ),
    );
  }
}
