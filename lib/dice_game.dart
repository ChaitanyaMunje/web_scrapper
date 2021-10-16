import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class DiceGame extends StatelessWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice Game'),),
      body: Dice(),
    );
  }
}
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int playerOne = 1,playerTwo = 1;
  String res = "";

  void rollDice(){
    setState(() {
      playerOne = Random().nextInt(6)+1;
      playerTwo = Random().nextInt(6)+1;
      if(playerOne>playerTwo){
        res = 'Player 1 Wins';
      }else if(playerTwo>playerOne){
        res = 'Player 2 Wins';
      }else{
        res = 'Draw';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10,),
            Column(
              children: [
                ElevatedButton(
                    onPressed: rollDice,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/dice$playerOne.png',height: 100,width: 100,color: Colors.white,),
                    )),
                SizedBox(height: 10,),
                Text("Player 1 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            SizedBox(width: 10,),
            Column(
              children: [
                ElevatedButton(onPressed: rollDice, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$playerTwo.png',height: 100,width: 100,color: Colors.white,),
                )),
                SizedBox(height: 10,),
                Text("Player 2 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            SizedBox(width: 10,),
          ],
        ),
        SizedBox(height: 20,),
        Text(res,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
      ],
    );
  }
}

