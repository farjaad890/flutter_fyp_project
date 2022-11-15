import 'package:flutter/material.dart';
import 'package:navigate/models/products.dart';

class shelf extends StatefulWidget {
  late int? id=0 ;
   shelf({Key? key,this.id}) : super(key: key);

  @override
  State<shelf> createState() => _shelfState();
}

class _shelfState extends State<shelf> {
  late int? id=widget.id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shelf"),
      ),
      body: Container(
        height: 20,
        width: 30,
        color: Colors.lightGreen,
        child: Text(id.toString()
        ),
      ),
    );
  }
  
  }