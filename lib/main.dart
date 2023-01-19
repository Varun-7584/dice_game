import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar:AppBar(
          backgroundColor: Colors.grey,
            centerTitle: true ,
            title : Text('Dice Game ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
body: dicee(),
        ),
      )
  );
}
class dicee extends StatefulWidget {
   dicee({Key? key}) : super(key: key);

  @override
  State<dicee> createState() => _diceeState();
}

class _diceeState extends State<dicee> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber =1 ;
  @override
  Widget build(BuildContext context) {

    return Center (

      //child: Image(
        //image: AssetImage('Images/dice4.png'),
      //)
child:Row (
  children:<Widget>[
    Expanded(
      child : TextButton(
        onPressed: (){
          print('left button got pressed');
          setState(() {
            leftDiceNumber = Random().nextInt(6)+1 ;
            rightDiceNumber = Random().nextInt(6)+1 ;
          });
        },
        child: Image.asset('Images/dice$leftDiceNumber.png'),
      )
    ),
   
   Expanded (
     child: TextButton(
       onPressed: (){
         print('Right button got pressed');
         setState(() {
         });
       },
       child: Image.asset('Images/dice$rightDiceNumber.png'),
     )
   ),
   // Expanded(
    //  child : Padding (
     //   padding: EdgeInsets.all(16.0),
    //  )
   // )
   // Expanded(
    //    child : TextButton(
      //    child: Image.asset('Images/dice$leftDiceNumber.png'),
        //  onPressed: (){
          //  setState(() {
            //  leftDiceNumber = 2 ;
            //});
          //},
        //)
    //)
  ]
),
    ) ;
  }
}

