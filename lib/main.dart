import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("suma2")),
          body: MyCalculator(),
        ));
  }
}

class MyCalculator extends StatefulWidget {
  _ComputeSum createState() => _ComputeSum();
}

class _ComputeSum extends State {
  TextEditingController tnum1 = TextEditingController();
  TextEditingController tnum2 = TextEditingController();
  String output = "";
  var n1 = 0;
  var n2 = 0;
  var sum = 0;

  void AddTwoNumber() {
    n1 = int.parse(tnum1.text);
    n2 = int.parse(tnum2.text);

    sum = n1 + n2;

    setState(() {
      output = n1.toString()+" + " + n2.toString() + " = " + sum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: tnum1,
            decoration: InputDecoration(
                labelText: "ingresar un número",
                hintText: ""),
          ),
          TextField(
            controller: tnum2,
            decoration: InputDecoration(
                labelText: "ingresar un número",
                hintText: ""),
          ),
          RaisedButton(
            onPressed: () {
              AddTwoNumber();
            },
            child: Text("sumar"),
          ),
          Text(output)
        ],
      ),
    );
  }
}
