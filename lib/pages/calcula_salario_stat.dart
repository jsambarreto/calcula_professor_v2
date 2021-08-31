import 'package:flutter/material.dart';

import 'calcula_hora.dart';

class CalculaSalarioStat extends StatelessWidget {
  final double value;
  const CalculaSalarioStat({Key? key, required this.value}) : super(key: key);

  @override
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
            child: Image.asset('assets/images/imagemCalcula.png',
                fit: BoxFit.fill),
          ),
          Text('$value'),
          Column(
            children: [
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
                    child: new Text('Hora aula',
                        style:
                            new TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => CalculaHora(),
                      //   ),
                      // );
//          setState(() {
//            _isNeedHelp = true;
//          });
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
