import 'package:flutter/material.dart';
import 'package:minto/screens/menu.dart';

class Tables extends StatefulWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('Tables')),
      ),
      body: GridView.builder(
        itemCount: 16,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) => ItemTile(index),

      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;


  const ItemTile(
      this.itemNo,
      );
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
        },
        leading: Container(
          width: 50,
          height: 50,
          color: Colors.red,
          ),
        title: Text('Table $itemNo',
        ),
      ),
    );
  }
}

