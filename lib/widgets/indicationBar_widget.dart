import 'package:flutter/material.dart';

Widget indicationBar(int _index) {
  int index = _index;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(
        Icons.check,
        color: (index == 0) ? Colors.green : Colors.transparent,
      ),
      Icon(
        Icons.check,
        color: (index == 1) ? Colors.green : Colors.transparent,
      ),
      Icon(
        Icons.check,
        color: (index == 2) ? Colors.green : Colors.transparent,
      )
    ],
  );
}
