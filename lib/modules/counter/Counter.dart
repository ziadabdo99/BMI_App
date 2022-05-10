import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text(
       "conter",
),
    ),

      body:
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              counter -- ;
              print(counter);
            },

              child:
                Text(
                  "Minus",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),),
            Padding(

              padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              ),
              child: Text(
                  "$counter",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(onPressed: (){
              counter ++;
              print(counter);
            },

              child:
              Text(
                "Plus",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),),
          ],

        ),
      ),


    );
  }
}
