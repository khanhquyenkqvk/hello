import "package:flutter/material.dart";


// common button
final ButtonStyle ButtonPrimary = ElevatedButton.styleFrom(
    backgroundColor: kMainGreenColor,
    minimumSize: Size(340, 54),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
        
final ButtonStyle Circlebtn = ElevatedButton.styleFrom(
    backgroundColor: kMainGreenColor,
    minimumSize: const Size(70, 70),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
//border input

const OutlineInputBorder greyBorder = OutlineInputBorder(
  borderSide: BorderSide(
      color: Color.fromRGBO(208, 208, 208, 1.0)), // Define border color here
);
