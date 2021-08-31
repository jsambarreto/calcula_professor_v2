import 'package:calcula_professor/pages/splashscreeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pages/home_page.dart';

class CalculaProfessor extends StatelessWidget {
  const CalculaProfessor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CalculaProfessor!',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
          );
        }
      },
    );
  }
}
