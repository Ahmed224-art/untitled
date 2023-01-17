import 'package:flutter/material.dart';
import 'package:untitled/logIn.dart';
import 'package:untitled/sign_in.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: login(),
 );
  }
}