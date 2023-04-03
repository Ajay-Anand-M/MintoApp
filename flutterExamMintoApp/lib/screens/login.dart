import 'package:flutter/material.dart';
import 'package:minto/screens/splashScreen.dart';
import 'package:minto/screens/table.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  var usernamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

   void sendData() {
     var username = usernamecontroller.text;
     var password = passwordcontroller.text;

   }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:EdgeInsets.only(
          top: 25.0,
          bottom: 20.0,
          right: 10.0,
          left: 10.0,
        ),

        child: Column(

        children: [
          Container(
            child:Text('Welcome to MINTO',
              style:TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ) ,
            ),
          ),
          SizedBox(height: 80,),

          TextFormField(
            controller: usernamecontroller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              labelText: 'UserName',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(
            height:10,
          ),
          TextFormField(
            controller: passwordcontroller,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(
            height:10,
          ),
          OutlinedButton(

            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )


            ),
            onPressed: (){
            if (usernamecontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty){
              sendData();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                  Tables()));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Username and password is required'))
              );
            }

          },
              child:Text('Login'),
          ),
        ],
        ),
      ),
    );
  }
}

