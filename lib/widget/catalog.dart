import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogState();
}

class _CatalogState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstainColor.whiteColor,
      body: Column(
        children: [Text('this is catalog page')],
      ),
    );
  }
}
