import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/models/item.model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  // HomePage() {}

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textCtrl =
      new TextEditingController(); //equivalente ao formcontrol do reactive form do angular

  add() {
    if (textCtrl.text.length < 3) return;

    setState(() {
      //mudando o estado do wiget/componente
      widget.items.add(Item(
        title: textCtrl.text,
        done: false,
      ));
      textCtrl.clear();
      save();
    });
  }

  remove(index) {
    setState(() {
      widget.items.removeAt(index);
      save();
    });
  }

  save() async {
    var prefs = await SharedPreferences
        .getInstance(); //shared preferences armazena dados do comportamento do usuario, senhas..
    await prefs.setString('data', jsonEncode(widget.items));
  }

  Future loadData() async {
    //future igual a uma promessa
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');
    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  _HomePageState() {
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: textCtrl,
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Dismissible(
            key: Key(widget.items[index].title),
            child: CheckboxListTile(
              title: Text(widget.items[index].title),
              onChanged: (bool value) {
                //widget.items[index].done = value;
                setState(() {
                  widget.items[index].done = value;
                  save();
                });
              },
              value: widget.items[index].done,
            ),
            onDismissed: (DismissDirection direction) {
              remove(index);
            },
            background: Container(
              child: Text("Apagar..."),
              color: Colors.red.withOpacity(0.7),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: add,
      ),
    );
  }
}
