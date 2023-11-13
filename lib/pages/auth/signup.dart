import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstainColor.whiteColor,
      body: Column(
        children: [Text('this is forgot sign up page')],
      ),
    );
  }
}
