import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'trending_page.dart';
import 'subs_page.dart';
import 'inbox.dart';
import 'library.dart';

// Main code for all the tabs
class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs>{
  static final homePageKey = GlobalKey<MyTabsState>();
  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: homePageKey,
      appBar: new AppBar(
        title:(
          new Image.asset("assets/images/youtube_logo.png",width: 100)
          ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      bottomNavigationBar: new Material(
          child: new TabBar(
              controller: tabcontroller,
              unselectedLabelColor: Colors.grey[500],
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              
              labelPadding: EdgeInsets.only(bottom: 1),
              isScrollable: false,
              indicatorColor: Color(0x000000),
              tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.whatshot),
              text: "Trending",
            ),
            new Tab(
              icon: new Icon(Icons.subscriptions),
              text: "Subscriptions",
            ),
            new Tab(
              icon: new Icon(Icons.inbox),
              text: "Inbox",
            ),
            new Tab(
              icon: new Icon(Icons.library_add),
              text: "Library",
            ),
          ])),
      body: new TabBarView(controller: tabcontroller, children: <Widget>[
        // All the Class goes here
        Home(),
        Trending(),
        Subscriptioins(),
        Inbox(),
        Library()
      ]),
    );
  }
}