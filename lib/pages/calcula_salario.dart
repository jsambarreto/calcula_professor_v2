import 'package:flutter/material.dart';
import 'calcula_hora.dart';

// ignore: must_be_immutable
class CalculaSalario extends StatefulWidget {
  double value = 0;
  CalculaSalario({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _CalculaSalarioState createState() => _CalculaSalarioState(this.value);
}

class _CalculaSalarioState extends State<CalculaSalario> {
  final double value;
  TextEditingController horaController = TextEditingController();
  double calculo = 0;
  _CalculaSalarioState(this.value);

  @override
  void _recebeHoraAula() {
    setState(() {
      calculo = 27 / 5 * value * double.parse(horaController.text);
      //print(calculo);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalculaProfessor!'),
      ),
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: double.infinity,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              child: Image.asset('assets/images/imagemCalcula.png',
                  fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Carga horaria total: ',
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
                  child: Text(
                    num.parse('$value').toStringAsPrecision(2),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 34,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Valor da hora aula: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: horaController,
                    keyboardType: TextInputType.number,
                    onChanged: (horaController) => _recebeHoraAula(),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Digite o valor da hora aula'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Salario bruto: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(10),
                  child: Text(
                    'R\$ ' + num.parse('$calculo').toStringAsFixed(2),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 34,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Aplicativo para calcular as horas aulas de um professor de uma Instituicao de Ensino Superior do estado da Bahia. O calculo é proveniente da Convencao Coletiva homologada ate 2019',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      minWidth: 170,
                      height: 50,
                      color: Colors.blue[800],
                      child: new Text('Home',
                          style: new TextStyle(
                              fontSize: 16.0, color: Colors.white)),
                      onPressed: () {
                        // ignore: unnecessary_null_comparison
                        if (value != 0) {
                          Navigator.pop(context);
                        } else
                          // ignore: unnecessary_statements
                          showAlertDialog;
                        //          setState(() {
                        //            _isNeedHelp = true;
                        //          });
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
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
