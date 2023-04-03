import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Menu ')),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Avalable Items',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 10,),
          Text('Porotta',style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
          Text('Dosa',style: TextStyle(
            fontSize: 15,
            ),),
          SizedBox(height: 5,),
          Text('Biryani',style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
          Text('Kuzhimandhi',style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
          Text('Shawarma',style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
          Text('Drinks',style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
