import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key}) ;

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
    double result = 0;                 
                   final TextEditingController textEditingController  = TextEditingController();


    @override 
 Widget build(BuildContext context) { 
  debugPrint('rebuilt');

   return  Scaffold(
                    backgroundColor: Colors.black12,
                    extendBody: true,
                  appBar: AppBar(
                    backgroundColor: Colors.black12,
                    title: const Text('CURRENCY CONVERTER'),
                    centerTitle: true,
                    toolbarHeight: 89,
                    titleTextStyle: const TextStyle(
                    color: Color.fromARGB(195, 26, 26, 26),
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
    body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 5),
                alignment: Alignment.topLeft,
                
            child: const Text('FROM USD(DOLLARS) TO NAIRA',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color.fromARGB(131, 0, 0, 0),                
              ),
             ),
            ),

                Padding(
                padding: const EdgeInsets.fromLTRB(30,  0, 30, 10),
                child: TextField(
                controller: textEditingController,
                 style: const TextStyle(
                  color: Color.fromARGB(255, 27, 27, 27),
                 ),
                 
                 decoration: const InputDecoration(
                  hintText: 'PLEASE ENTER AMOUNT YOU WANT TO CONVERT IN USD',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 146, 146, 146),
                  ),
                
                  filled: true,
                  fillColor: Color.fromARGB(255, 168, 166, 166),
                  prefixIcon: Icon(Icons.monetization_on),
                 ),
                 keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                 ),
            ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(onPressed: () {   
                  
                  setState(() {
                    result = double.parse(textEditingController.text) * 912.50;
                  });
                }, 
                style: TextButton.styleFrom(
                  backgroundColor:Colors.black87,
                  foregroundColor: const Color.fromARGB(255, 216, 216, 216),
                  minimumSize: const Size(double.infinity, 50),
                 shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10),
                 ),
                 ), 
                ),
                child: const Text('CONVERT')
                ),
              ),
              Container(
               padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),            
               margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),

               decoration: BoxDecoration(
               color: const Color.fromARGB(255, 209, 209, 209),
                borderRadius: BorderRadius.circular(10),
               ),

              child:   Text (
                result.toString(), 
                
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 27, 27, 27),
                 ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
