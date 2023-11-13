import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';
import 'package:wanna_kick/components/myButton.dart';
import 'package:wanna_kick/components/myTextfield.dart';
import 'package:wanna_kick/themes/constain_textstyle.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Center(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        image: DecorationImage(
                          image: AssetImage('assets/images/shoe1.png'),
                        )),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'WELCOME BACK, SIR',
                  style: MyTitle(Colors.black),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(color: Colors.grey, width: .5)),
                        child: TextFormField(
                          controller: _emailController,
                          cursorColor: Colors.black12,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(color: Colors.grey, width: .5)),
                        child: TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.black12,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, right: 30),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              GoRouter.of(context).go('/forgot-password');
                            },
                            child: Text('Forgot Password',
                                style: MyDescription(Colors.grey)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print(_emailController.text);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black87,
                  ),
                  child: Text(
                    'Sign In',
                    style: MyTitle(Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 30),
              Center(
                child: Container(
                  width: 160,
                  height: 80,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, .3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.facebook,
                            size: 30,
                          ),
                          onPressed: () {
                            // Xử lý khi nút Instagram được nhấn
                          },
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, .3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.tiktok, size: 30),
                          onPressed: () {
                            // Xử lý khi nút TikTok được nhấn
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 250,
                  child: Row(
                    children: [
                      Text('Dont have account? '),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).go('/sign-up');
                        },
                        child: Text(
                          "Let's Register",
                          style: MyDescription(Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
