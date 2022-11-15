import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigate/models/categories.dart';
import 'package:navigate/models/products.dart';
import 'package:navigate/screens/wishlist.dart';
import 'package:navigate/screens/cproducts.dart';
import 'package:navigate/models/global.dart';
import 'package:navigate/screens/cart.dart';


class cpproducts1 extends StatefulWidget {
 late List<product> prod;
   cpproducts1( this.prod, {Key? key}) : super(key: key);

  @override
  State<cpproducts1> createState() => _cpproducts1State();
}

class _cpproducts1State extends State<cpproducts1> {
  void incrementcounter(){
    setState(() {
      totalitems++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF45F1B9),
        title: Center(child: LayoutBuilder(builder: (context, constraints) {
          if(totalitems == 0 || check==0){
            return Center(
              child: Text("Total : $total",
                style: TextStyle(
                    fontSize: 35
                ),
              ),
            );
          }else{
            check=0;
            return Center(
              child: Text("Total : ${total=cart[totalitems-1].price+total}",
                style: TextStyle(
                    fontSize: 35
                ),
              ),
            );
          }
        }
        ),
        ),
      ),
      backgroundColor: Color(0xFFA7FFEB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount:widget.prod.length ,
            itemBuilder:(BuildContext context,int index){
              return Card(child: ListTile(title: Text(widget.prod[index].name,),
                trailing: Text('\$${widget.prod[index].price}'),
                onTap: (){
                  cart.add(widget.prod[index]);
                  check=1;
                  incrementcounter();
                },
              ),
              );
            },
          ),
            SizedBox(
                height: 50.0,
                width:250.0,
                //width: MediaQuery.of(context).size.width,
                child:  ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cartlist(ind : cart, Total: total,),),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF45F1B9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Cart',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
            ),
        ],
      ),
    );
  }
}
