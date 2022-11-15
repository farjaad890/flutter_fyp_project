import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigate/models/categories.dart';
import 'package:navigate/models/global.dart';
import 'package:navigate/models/products.dart';
import 'package:navigate/screens/floorscreen.dart';
import 'package:navigate/screens/floorscreen2.dart';
import 'package:navigate/screens/wishlist.dart';

class cartlist extends StatefulWidget {
  final List<product> ind;
  final int Total;
  const cartlist({Key? key, required this.ind, required this.Total}) : super(key: key);

  @override
  State<cartlist> createState() => _cartlistState();
}

class _cartlistState extends State<cartlist> {
  late List<product> products= widget.ind;
  late int total=widget.Total;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
      _selectedIndex = index;
      if(_selectedIndex==0)
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => Floor2(title: total, ind: products),),
          );
        }
      if(_selectedIndex==1)
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => Floor2(title: total, ind: products),),
          );
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart : $total')),
        backgroundColor: Color(0xFF45F1B9),
      ),
      backgroundColor: Color(0xFFA7FFEB),
      body: Stack(
        children:[ SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length ,
                itemBuilder:(BuildContext context,int index){
                  return Card(child: ListTile(title: Text(products[index].name,),
                    onTap: (){},
                  ),
                  );
                },
              ),
            ],
          ),
        ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.max,
          //   children: [
          //     Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: 50,
          //       color: Colors.white,
          //       child: Center(child: Text("Total : $total",
          //         style: TextStyle(
          //           fontSize: 35,
          //         ),
          //       ),
          //       ),
          //
          //     ),
          //   ],
          // ),
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(items:
          <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.assistant_navigation),
              label: 'navigate',
              backgroundColor: Colors.red,

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'priority',
              backgroundColor: Colors.green,
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
