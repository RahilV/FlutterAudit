import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Container(
              child:Text("Scaffold widget")
            ),
          ),
        ),
      ),
    )
  );
}