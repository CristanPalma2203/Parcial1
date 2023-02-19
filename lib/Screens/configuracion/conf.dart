import 'package:flutter/material.dart';
import 'package:contenedores/Screens/login/login.dart';
import 'package:contenedores/components/background.dart';

class Conf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Configuracion",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(93, 10, 40, 1),
                  fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Parcial I - ETPS3!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(36, 31, 31, 1.0),
                    fontSize: 30
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Cristian Alexander Palma Molina - 25-0878-2019 \nJeremias Ezequiel Escobar Cartagena - 25-3712-2019",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(36, 31, 31, 1.0),
                    fontSize: 12
                ),
                textAlign: TextAlign.left,
              ),
            ),




          ],
        ),
      ),
    );
  }
}