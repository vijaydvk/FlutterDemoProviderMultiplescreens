import 'package:flutter/material.dart';
import 'package:flutter_demo_provider/manage.dart';
import 'package:flutter_demo_provider/secondpage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
     
  @override
  Widget build(BuildContext context) {
    int itemCount = Provider.of<Manage>(context).counter;
  
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return SecondPage();
          }));
        },
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300.0,
            child: Text('$itemCount',style: TextStyle(fontSize: 30.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Provider.of<Manage>(context,listen:false).increaseCounter();
              }, child: Text('Add')),
              ElevatedButton(onPressed: (){
                Provider.of<Manage>(context,listen:false).decreaseCounter();
              }, child: Text('Delete'))
            ],
          )
        ],
      ),
    );
  }
}