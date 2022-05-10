import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colorsP.dart';

Widget defaultButton({
   double width = double.infinity ,
  required Function function,
  required String text,
}) =>
Container(
  width: width,
  child: MaterialButton(
    onPressed: function(),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.white,

      ),
    ),

  ),
  decoration: BoxDecoration(
      color: colorRed,
      borderRadius: BorderRadius.circular(10.0)
  ),
);