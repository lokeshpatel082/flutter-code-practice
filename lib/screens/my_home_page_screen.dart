import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_am_poor/drawer_list_item.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF259990),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Password Saver ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/my-pet-world.appspot.com/o/images%2Fbannerads%2FxTmAblJI7fMF1l0nUa1gM32Kh9z1%2F734rm6w7bxznp%2FPETWORLD-HOME-SLIDER-KITTENS.webp?alt=media&token=cf7f48bb-6621-47b3-b3f8-d8b36fa89715",
                    fit: BoxFit.cover,
                  )),
              expandedHeight: 150.0,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add),
                  tooltip: 'Add new entry',
                  onPressed: () {},
                ),
              ]),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height: 100,
                  child: Text('Item:'),
                );
              },
              childCount: 8,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RawMaterialButton(
                        shape: CircleBorder(),
                        elevation: 5.0,
                        padding: EdgeInsets.all(3),
                        fillColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/lake.jpg'),
                          radius: 30,
                        ),
                        onPressed: null),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('MY Names'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('email'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.navigate_next_sharp),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            DrawerItem(
              itemIcon: Icon(Icons.home),
              itemText: 'Home',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.home),
              itemText: 'Donate',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.rate_review),
              itemText: 'Rate the app',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.login),
              itemText: 'Login Setting ',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.sync),
              itemText: 'Synchronization',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.wb_sunny),
              itemText: 'Night Mode',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.wb_sunny),
              itemText: 'Night Mode',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.wb_sunny),
              itemText: 'Night Mode',
            ),
            DrawerItem(
              itemIcon: Icon(Icons.wb_sunny),
              itemText: 'Night Mode',
            ),
          ],
        ),
      ),
    );
  }
}
