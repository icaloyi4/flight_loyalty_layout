import 'package:flutter/material.dart';

import 'my_colors.dart';

InputDecoration fieldDecoration(String label, IconData? icon) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: label,
    labelStyle: const TextStyle(color: MyColors.mainColor),
    prefixIcon: (icon == null)
        ? null
        : Icon(
            icon,
            color: MyColors.mainColor,
          ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    errorStyle: const TextStyle(
      color: Colors.red, // or any other color
    ),
  );
}

BoxDecoration gradienBg() {
  return const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          MyColors.mainColor,
          MyColors.mainColor10,
          Color.fromARGB(255, 231, 231, 231),
          Color.fromARGB(255, 244, 244, 244),
          Colors.white
        ],
        stops: [
          0,
          0.1,
          0.2,
          0.3,
          0.4
        ]),
  );
}
