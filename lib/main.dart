import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  int counter = 0;

  bool isChecked  = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Paras'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) =>Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          ),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) => Column(
                  children: <Widget>[
                    RaisedButton(onPressed: ()
                    {
                      setState(() {
                        counter++;
                      });
                    }),
                    Text(counter.toString()),
                  ],
                ),
              ),

            ],
          ),
        ));
  }




}






