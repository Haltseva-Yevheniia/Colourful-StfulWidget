
// НЕ ПОЛУЧИЛОСЬ, меняется 1 раз на FirstContainer и после этого не меняется
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePageStatefullWidget extends StatefulWidget {
  const HomePageStatefullWidget({super.key});

  @override
  State<HomePageStatefullWidget> createState() =>
      _HomePageStatefullWidgetState();
}

class _HomePageStatefullWidgetState extends State<HomePageStatefullWidget> {
  Widget currentContainer = NewContainer();

  void changeContainer() {
    setState(() {
      currentContainer==NewContainer() ? currentContainer = FirstContainer() : currentContainer = NewContainer();
      // if(currentContainer == FirstContainer()) {
      //   currentContainer = NewContainer();
      // } else {currentContainer = FirstContainer();}
    });
print('$currentContainer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Colourful Widget',
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(child: InkWell(
          onTap: changeContainer,
          child: currentContainer),),
    );
  }
}


class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
      ),
      child: Center(
        child: Text(
          'Click me!!!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}


class NewContainer extends StatelessWidget {
  const NewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(50),
        color: Colors.red,),
      // gradient: LinearGradient(
      //     colors: [Colors.white60, Colors.indigo.shade800],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight)),
    );
  }
}






