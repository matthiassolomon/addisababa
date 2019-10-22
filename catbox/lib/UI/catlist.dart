import 'package:flutter/material.dart';

class CatList extends StatefulWidget {
  @override
  _CatListState createState() => _CatListState();
}

class _CatListState extends State<CatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _getAppTitleWidget(),
    );
  }

  _getAppTitleWidget() {
    return SafeArea(
      child: Text('Cats',
          style: TextStyle(
            fontSize: 29.0,
            color: Colors.white,
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          )),
    );
  }
}
