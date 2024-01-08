// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
final Function()? onTap;



  Mybutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.black,
          
          borderRadius: BorderRadius.circular(8 )),
          child: Center(
              child: Text(
            'Sign in',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16),
          ))),
    );
  }
}
