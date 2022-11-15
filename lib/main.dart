import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:navigate/screens/signuplogin.dart';

import 'firebase_options.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Splashscreen(),
  ),
  );
}
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
   void initState() {
       //TODO: implement initState
      super.initState();
      Timer(const Duration(seconds: 5), () { Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const signuplogin ()),
      );});
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64FFDA),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child:Image(image: AssetImage('images/logo2c.png',
                  ),
                  width: 250.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text('Navigate',
                  style: const TextStyle(
                    color: const Color(0xFF279A79),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('In-Store navigation',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const Text('Shopping made easier',
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const CircularProgressIndicator(
                    color: Color(0xFF279A79),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
