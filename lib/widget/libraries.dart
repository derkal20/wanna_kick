import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';
import 'package:wanna_kick/widget/favorites.dart';
import 'package:wanna_kick/widget/collection.dart';

class LibrariesPage extends StatefulWidget {
  const LibrariesPage({Key? key}) : super(key: key);

  @override
  State<LibrariesPage> createState() => _LibaryState();
}

class _LibaryState extends State<LibrariesPage> {
  List<String> tabs = ['FAVORITE', 'MY COLLECTION'];

  late final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new,
                color: Colors.black), // Biểu tượng của nút "Back"
            onPressed: () {
              // Xử lý khi nút "Back" được nhấn
              Navigator.pop(context); // Để quay lại trang trước đó
            },
          ),
          backgroundColor: ConstainColor.backgroundWhite,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Library', style: TextStyle(color: Colors.black)),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    isDismissible: true,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height - 50,
                          padding: EdgeInsets.all(16.0),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close),
                                ),
                                top: 0,
                                right: 0,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 50.0,bottom: 50),
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: <Widget>[
                                          ListTile(
                                            title: Text('Support',
                                                style: TextStyle(
                                                    color: Colors.grey[400])),
                                          ),
                                          Divider(),
                                          ListTile(
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 20,
                                            ),
                                            title: Text('Contact us'),
                                          ),
                                          Divider(),
                                          ListTile(
                                            trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 20),
                                            title: Text('Privacy policy'),
                                          ),
                                          Divider(),
                                          ListTile(
                                            trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 20),
                                            title: Text('Terms of use'),
                                          ),
                                          Divider(),
                                          ListTile(
                                            trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 20),
                                            title: Text('Restore purchases'),
                                          ),
                                          Divider(),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    180) /
                                                2),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 7,
                                                offset: Offset(0, .3),
                                              ),
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.facebook),
                                            onPressed: () {
                                              // Xử lý khi nút Instagram được nhấn
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 7,
                                                offset: Offset(0, .3),
                                              ),
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.tiktok),
                                            onPressed: () {
                                              // Xử lý khi nút TikTok được nhấn
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.settings),
                color: Colors.black,
              )
            ],
          ),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              child: Text(
                'FAVORITE',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'MY COLLECTION',
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            FavoritePage(),
            CollectionPage(),
          ],
        ),
      ),
    );
  }
}
