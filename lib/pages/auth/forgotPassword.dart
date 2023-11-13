import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';

class forgotPasswordPage extends StatefulWidget {
  const forgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstainColor.whiteColor,
      body: Column(
        children: [Text('this is forgot password page')],
      ),
    );
  }
}
