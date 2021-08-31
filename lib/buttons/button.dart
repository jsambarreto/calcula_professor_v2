import 'package:calcula_professor/pages/calcula_hora.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final String value;
  final Function function;

  const Button({
    Key? key,
    required this.name,
    required this.value,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 170,
      height: 50,
      color: Colors.blue[800],
      child: new Text(name,
          style: new TextStyle(fontSize: 16.0, color: Colors.white)),
      onPressed: function(),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
