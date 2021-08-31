import 'calcula_hora.dart';
import 'calcula_salario.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  TextEditingController valueController = TextEditingController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalculaProfessor!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 360,
              child: Image.asset('assets/images/imagemCalcula.png',
                  fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Aplicativo para calcular as horas aulas de um professor de uma Instituicao de Ensino Superior do estado da Bahia. O calculo é proveniente da Convenção Coletiva homologada até 2019',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  //decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: valueController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Digite a sua carga horaria total'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 170,
                  height: 50,
                  color: Colors.blue[800],
                  child: new Text('Salario bruto',
                      style:
                          new TextStyle(fontSize: 16.0, color: Colors.white)),
                  onPressed: () {
                    if (valueController.text != '') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CalculaSalario(
                            value: double.parse(
                                valueController.text.replaceAll(',', '.')),
                          ),
                        ),
                      );
                    } else {
                      // ignore: unnecessary_statements
                      showAlertDialog;
                    }
                  },
                ),
                MaterialButton(
                  minWidth: 170,
                  height: 50,
                  color: Colors.blue[800],
                  child: new Text('Hora aula',
                      style:
                          new TextStyle(fontSize: 16.0, color: Colors.white)),
                  onPressed: () {
                    if (valueController.text != '') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CalculaHora(
                            value: double.parse(
                                valueController.text.replaceAll(',', '.')),
                          ),
                        ),
                      );
                    } else {
                      // ignore: unnecessary_statements
                      showAlertDialog;
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
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
