import 'package:flutter/material.dart';
import 'package:nav_05/widgets/botones_nav.dart';

class Three extends StatelessWidget {

  static const String ROUTE = '/three';
  

  @override
  Widget build(BuildContext context) {
     String? text = ModalRoute.of(context)!.settings.arguments as String?;


    return BotonesNav(
      text:text!,
    );
  }
} 