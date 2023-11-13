import 'package:flutter/material.dart';
import 'package:wanna_kick/pages/home/home.dart';
import 'package:wanna_kick/themes/constain_color.dart';
import 'package:wanna_kick/models/CardInfo.dart';
import 'package:wanna_kick/widget/libraries.dart';

class FeaturePage extends StatefulWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  State<FeaturePage> createState() => _FeatureState();
}

class _FeatureState extends State<FeaturePage> {
  List<Map<String, dynamic>> cards = [
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 1",
      'img': 'shoes.png',
      'description': "description shoes 1.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 2",
      'img': 'shoes.png',
      'description': "description shoes 2.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    },
    {
      'image': 'assets/images/shoes.png',
      'title': "Shoes 3",
      'img': 'shoes.png',
      'description': "description shoes 3.",
      'isLike': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstainColor.whiteColor,
        body: ListView(
          children: [
            Container(
              child: Column(children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/feature-thumbnail.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          left: 20,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[800]?.withOpacity(0.7),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: Icon(Icons.api_sharp),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => LibrariesPage()));
                                },
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Container(
                            child: Text(
                              'Discover',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ConstainColor.whiteColor,
                                  fontSize: 35),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          left: 20,
                          child: Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 250,
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'HIGHLIGHTED',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: ConstainColor.whiteColor,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                            color: ConstainColor.whiteColor,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  child: GridView(
                                    padding: const EdgeInsets.all(20),
                                    scrollDirection: Axis.horizontal,
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: double.infinity,
                                      childAspectRatio: 1.1,
                                      mainAxisSpacing: 20,
                                    ),
                                    children: <Widget>[
                                      for (var item in cards)
                                        Container(
                                          height: 150,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/${item['img']}"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: IconButton(
                                                          icon: Icon(Icons
                                                              .favorite_rounded),
                                                          onPressed: () {
                                                            bool isIconPressed =
                                                                false;
                                                            setState(() {
                                                              item['isLike'] =
                                                                  !item[
                                                                      'isLike'];
                                                            });
                                                          },
                                                          color: item['isLike']
                                                              ? Colors.red
                                                              : Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  item['title'] ?? 'none',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                    item['description'] ??
                                                        'none',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[600]))
                                              ],
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 750,
                  // color: Colors.blue,
                  child: Column(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'ON RUNNING',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/on_running.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 2.5,
                          height: 150,
                          decoration: BoxDecoration(
                            color: ConstainColor.lightGreyTextColor,
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoe1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 2.5,
                          height: 150,
                          decoration: BoxDecoration(
                            color: ConstainColor.lightGreyTextColor,
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoe2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      child: Center(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoe3.png'),
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                )
              ]),
            )
          ],
        ));
  }
}
