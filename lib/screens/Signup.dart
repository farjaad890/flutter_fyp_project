import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navigate/screens/home.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  FirebaseAuth _auth=FirebaseAuth.instance;
  TextEditingController email= new TextEditingController();
  TextEditingController pasword= new TextEditingController();
  TextEditingController phonenumber= new TextEditingController();

  signUp() async {
    try {
      String emailadress = email.text.trim(),
          Pasword = pasword.text.trim(),
           phone = phonenumber.text.trim();
      if (email == null && pasword == null) {
        print('Email & pasword is empty');
      } else {
        // if(checkNumeberExist(phone, email)==true){
        UserCredential newUser = await _auth.createUserWithEmailAndPassword(
            email: emailadress, password: Pasword);
        if (newUser.user != null) {
          final docUser = FirebaseFirestore.instance
              .collection('User')
              .doc(newUser.user!.uid);
          final json = {
            'uid': newUser.user!.uid,
            'email': email,
            'Pasword': Pasword,
            'phone': phone,
          };
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => home()),
          );
          // await docUser.set(json);
          // verifyphoneNumber(phone);
          //
          // // ignore: use_build_context_synchronously
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Otp(
          //       PhomeNumber: phone,flag: widget.flag,
          //       userMail: email,
          //     ),
          //   ),
          // );
        }else{
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('email or Number already exist')),
          );
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Stack(
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/made3.png"),
                    fit: BoxFit.fill
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    child: Container(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFFFF264),
                        size: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Material(
                    elevation: 2.5,
                    child: Container(
                      height: 50.0,
                      width:300.0,
                      color: Color(0xFFA7FFEB),
                      child:TextField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Center(child: Text('example@gmail.com')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    elevation: 2.5,
                    child: Container(
                      height: 50.0,
                      width:300.0,
                      color: Color(0xFFA7FFEB),
                      child:TextField(
                        controller: pasword,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Center(child: Text('Password')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    elevation: 2.5,
                    child: Container(
                      height: 50.0,
                      width:300.0,
                      color: Color(0xFFA7FFEB),
                      child:TextField(
                        controller: phonenumber,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Center(child: Text('phone number')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                      height: 50.0,
                      width:250.0,
                      child: ElevatedButton(
                        onPressed: () {
                       signup();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF45F1B9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
