import 'package:flutter/material.dart';
import './passwordsdata.dart';

void main(){
  runApp(new MaterialApp(// E.g: Application MaterialApp runs on a desk
    home: new MyApp(),// Setting the home screen to MyApp class
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{
  List<String> _passwords = [];

  void _onClicked(){
    setState(() => _passwords.add('1st Click'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: Text('Password Protector')),
            floatingActionButton: new FloatingActionButton(onPressed: _onClicked,child: new Icon(Icons.add)),
            body: Column(children: [
              Container(
                  margin: EdgeInsets.all(20.0),
              ),
              Expanded(child: PasswordsData(_passwords))
            ])));
  }
}
