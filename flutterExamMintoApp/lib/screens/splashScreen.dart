import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:minto/screens/login.dart';
import 'package:minto/screens/menu.dart';

import 'menu.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
      LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/mintofinallogo.png',width: 300,),
            const SizedBox(height: 5,),
           SpinKitWave(
             color: Colors.lightGreenAccent,
             size: 30,
           )
          ],
        ),
      ),

    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Table Selection')),
        backgroundColor: Colors.yellow,
        titleTextStyle: TextStyle(
          // fontWeight:FontWeight.bold,
          fontSize: 20,
          color: Colors.black

        ),
      ),


      );

  }
}

