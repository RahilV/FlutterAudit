import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Container(
              child:Text("Assignment 1")
            ),
          ),
        ),
        
        body:Container(   
          child: ListView(
            children: <Widget>[
              getImage(),
              MyStatelessWidget(),
              Container(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              ),
              
                  ],
          ),
        ),
        
      ),
    );
  }
}

Widget getImage() {
  AssetImage assetImage = AssetImage('assets/images/sea.jpg');
  Image image = Image(
    alignment: Alignment.center,
    gaplessPlayback:
        true, //continue showing the old image when the image provider changes.
    image: assetImage,
    fit: BoxFit.fitHeight, // showing full height even if width overflows
    width: 350.0,
    height: 350.0,
  );

  return Container(
    child: image,
    margin: EdgeInsets.all(25.0),
  );
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.image),
              title: Text('Beautiful Sea'),
              subtitle: Text('Image on pexels'),
            ),
            ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('VIEW'),
                    onPressed: launchURL,
                  ),
                ],
              ),
            ),
          ],
        ),
        color: Colors.grey,
      ),
    );
  }
}
launchURL() async {
  const url = 'https://images.pexels.com/photos/2860705/pexels-photo-2860705.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
