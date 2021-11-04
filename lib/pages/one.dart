import 'package:flutter/material.dart';
import 'package:nav_05/pages/two.dart';
import 'package:nav_05/widgets/botones_nav.dart';

class One extends StatelessWidget {

  static const String ROUTE = '/one';
  

  @override
  Widget build(BuildContext context) {

    String? text = ModalRoute.of(context)?.settings.arguments as String?;

    if(text == null){
      text = "Default Uno";
    }

    return BotonesNav(
      text: text,
    );
  }
} 