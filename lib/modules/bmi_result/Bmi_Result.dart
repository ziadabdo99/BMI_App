import 'package:flutter/material.dart';

import '../../shared/colors/colorsP.dart';

class BmiResult extends StatelessWidget {

  final int result;
  final int   Age;
  final bool isMale ;
  BmiResult ({
   required   this.result,
   required   this.Age,
   required   this.isMale,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDarkBlue,
        title: Text(
          "BMI Result"
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: colorOffWhite,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Gender
                Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: colorBlue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                          "Gender : ${ isMale ? "Male" : "Female" }  ",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,),
                //BMI
                Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: colorBlue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "BMI : $result",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,),
                //Age
                Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: colorBlue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "Age : $Age",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
