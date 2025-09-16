import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){
  runApp(MaterialApp(title: "List View", home: new JsonList(),));
}

class JsonList extends StatefulWidget {
  const JsonList({super.key});

  @override
  _Product createState() => new _Product();
}

class _Product extends State<JsonList>{

  List<dynamic> dataJSON = [];

  Future<void> takeData() async{
   http.Response result = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {"Accept": "application/json"},
      );
      setState(() {
        dataJSON = json.decode(result.body);
      });
      
  }

  @override
  void initState(){
    super.initState();
    this.takeData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("JSON File"),),
      body: ListView.builder(
        itemCount: dataJSON.length,
        itemBuilder: (context, i){
          return Container(
            child: Card(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(dataJSON[i]["title"]),
                    Text(dataJSON[i]["body"]),
                  ],
                ),
              ),
            ),

          );
        }
      ),
    );
  }
}