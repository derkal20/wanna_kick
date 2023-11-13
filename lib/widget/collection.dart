import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionState();
}

class _CollectionState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstainColor.whiteColor,
      body: Column(
        children: [
          Container(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
