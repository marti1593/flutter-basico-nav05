import 'package:flutter/material.dart';
import 'package:nav_05/widgets/botones_nav.dart';

class Two extends StatelessWidget {

  static const String ROUTE = '/two';
  

  @override
  Widget build(BuildContext context) {

    String? text = ModalRoute.of(context)!.settings.arguments as String?;


    return BotonesNav(
      text:text!,
    );
        
      
    
  }
} 