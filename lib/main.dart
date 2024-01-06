 import 'package:flutter/material.dart';

import 'currency_converter_material_page.dart';
 
 void main() {
  runApp(const MyApp());
 } 

// Types of Widget
// 1. stateful widget
// 2. stateless widget
// 3. inherited widget

 class MyApp extends StatelessWidget {
   const MyApp({super.key});
    
     @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        home: CurrencyConverterMaterialPage(),
    ); 
   }
}
