

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './app_screens/home.dart';
void main() {
  runApp(MaterialApp(
  title:"Expoloring UI widgets" ,
home: Scaffold(
  appBar: AppBar(title: Text("STUDENT GROUB"),),
body: getListView(),
  floatingActionButton: FloatingActionButton(
    onPressed: (){

    },
    child: Icon(Icons.add),
    backgroundColor: Colors.green,
  ),
  ) ,

));




}
Dialog dialog = new Dialog ();



List<String> getListElements() {
  var items = List<String>.generate(10, (counter) => "group  $counter");
return items;
}



Widget getListView() {
  var listIems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.arrow_right) ,
onTap:(){


} ,
title: Text(listIems[index]),
        );
      }

  );
  return listView;


}