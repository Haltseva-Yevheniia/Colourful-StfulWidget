
import 'package:flutter/material.dart';
import 'package:statefull_widget/home_page.dart';
import 'package:statefull_widget/home_page_stfull_widget.dart';


void main (){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {


@override

Widget build (BuildContext context){
  return MaterialApp(
    home: HomePageStatefullWidget(),
  );

}}

