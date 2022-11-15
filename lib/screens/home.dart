import 'package:flutter/material.dart';
import 'package:navigate/screens/wishlist.dart';
import 'package:navigate/models/global.dart';
import 'package:navigate/screens/cart.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA7FFEB),
      body: SafeArea(child:Center(
        child: SizedBox(
            height: 50.0,
            width:250.0,
            child: ElevatedButton(
              onPressed: () {
                if(cart.isEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wishlist()),
                  );
                }
                else{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cartlist(ind : cart, Total: total,),),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF45F1B9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('create wishlist',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
        ),
      ),
      ),
    );
  }
}
