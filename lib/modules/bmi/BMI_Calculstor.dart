

import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/Bmi_Result.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
 Color  colorRed = Color(0xffE63946);
 Color  colorBlue = Color(0xffA8DADC);
 Color  colorDarkBlue = Color(0xff1D3557);
 Color  colorOffWhite = Color(0xffF1FAEE);

 bool   isMale = true;
 double height = 120;
  int   Age = 25 ;
  int   Weight = 75 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: colorDarkBlue,
        title:
        Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),

      ),
      body:
      Container(
        color: colorOffWhite,
        width: double.infinity,
        child: Column(


          children: [
                   //Male & Female
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child:

                Row(
                  children: [
                    // Male
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration:
                          BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale ? colorRed : colorBlue ,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(

                              children: [
                                Image(
                                    image: AssetImage("assets/male.png",),
                                  height:70 ,
                                  width: 70,
                                ),
                                SizedBox(height: 10,),
                                Text("Male",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: colorDarkBlue,

                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    //Female
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration:
                          BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),

                            color: isMale ? colorBlue : colorRed ,

                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(

                              children: [
                                Image(
                                  image: AssetImage("assets/fem.png",),
                                  height:70 ,
                                  width: 70,
                                ),
                                SizedBox(height: 10,),
                                Text("Female",
                                style: TextStyle(
                                  color: colorDarkBlue,
                                  fontSize: 30.0,

                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                  //Slider
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffA8DADC),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',
                      style: TextStyle(

                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                          color: colorDarkBlue,
                      ),

                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${height.round()}",
                          style:TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                              color: Color(0xff1D3557),
                          ),
                          ),
                          SizedBox(width: 5.0,),
                          Text("CM",
                            style:TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                                color: Color(0xff1D3557),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 250,
                          min: 50,
                          onChanged: (value)
                          {
                            setState(() {
                              height = value;
                            });
                          }
                      )

                    ],
                  ),
                ),
              ),
            ),
                   //Age & Weight
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                      //Age
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA8DADC),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                            style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1D3557),
                          ),
                          ),
                          Text('$Age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1D3557),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                Age -- ;
                              });
                            },
                              mini: true,
                              child:Icon(
                                Icons.remove,

                              ),

                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                Age ++ ;
                              });
                            },
                              mini: true,
                            child:Icon(
                              Icons.add,

                            ),

                            ),
                          ],
                          ),
                        ],
                        ),
                      ),
                    ),
                     SizedBox(width: 20.0,),
                       //weight
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA8DADC),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1D3557),
                              ),
                            ),
                            Text('$Weight',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1D3557),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    Weight -- ;
                                  });
                                },
                                  mini: true,
                                  child:Icon(
                                    Icons.remove,

                                  ),

                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    Weight ++ ;
                                  });
                                },
                                  mini: true,
                                  child:Icon(
                                    Icons.add,

                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                //calc button
            Container(
              width: double.infinity,
              child: MaterialButton( onPressed: (){
                double result = Weight / pow(height/100, 2) ;
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => BmiResult (
                         Age: Age,
                          isMale: isMale,
                        result: result.round(),
                        ),
                    ),
                );
              },
                height: 50.0,
                child: Text("Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                color: colorRed,
              ),
            ),
          ],

        ),
      ),


    );
  }
}
