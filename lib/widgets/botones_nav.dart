import 'package:flutter/material.dart';
import 'package:nav_05/pages/four.dart';
import 'package:nav_05/pages/one.dart';
import 'package:nav_05/pages/three.dart';
import 'package:nav_05/pages/two.dart';


class BotonesNav extends StatelessWidget {
  final String text;

  BotonesNav({required this.text});

  @override
  Widget build(BuildContext context) {


    final elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.purple,
      onPrimary: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16)
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
           
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, One.ROUTE,
                    arguments: "Uno 1.0" //argumento
                    ); //pushReplacementNamed
              },
              child: Text("Ir a la página uno"),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Two.ROUTE,
                    arguments: "Dos"); //pushReplacementNamed
              },
              child: Text("Ir a la página dos"),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Three.ROUTE,
                    arguments: "Tres"); //pushReplacementNamed
              },
              child: Text("Ir a la página tres"),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Four.ROUTE,
                    arguments: "Cuatro"); //pushReplacementNamed
              },
              child: Text("Ir a la página cuatro"),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                if (Navigator.canPop(context))
                  Navigator.pop(context);
                else
                  print("No hay más back");
              },
              child: Text("Volver"),
            )
          ],
        ),
      ),
    );
  }
}