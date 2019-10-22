import 'package:flutter/material.dart';

import 'UI/catlist.dart';

void main() => runApp(CatBoxApp());

class CatBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatList(),
    );
  }
}
