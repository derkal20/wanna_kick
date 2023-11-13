import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoriteState();
}

class _FavoriteState extends State<FavoritePage> {
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
