

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenUI();
  }
  
}

class HomeScreenUI extends State<HomeScreen>{

  void showBottomSheetForTakingInputNote(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text("Add a Note"),
                TextFormField(),
                TextFormField(),
                ElevatedButton(onPressed: (){}, child: Text("Add Note"))
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App 009"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showBottomSheetForTakingInputNote();
        },
      ),
    );
  }
}