
// НЕ ПОЛУЧИЛОСЬ
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
      body: FirstContainer(),
    );
  }
}

class FirstContainer extends StatefulWidget {
  const FirstContainer({super.key});

  @override
  State<FirstContainer> createState() => _FirstContainerState();
}

class _FirstContainerState extends State<FirstContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
setState(() {
  changeContainer();
});
        },
        child: Container(
          width: 400,
          height: 400,
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
        ),
      ),
    );
  }
}


class NewContainer extends StatefulWidget {
  const NewContainer({super.key});

  @override
  State<NewContainer> createState() => _NewContainerState();
}

class _NewContainerState extends State<NewContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          setState(() {
            changeContainerToFirst();
          });

        },
        child: Container(

          decoration: BoxDecoration(
              shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors: [Colors.white60, Colors.indigo.shade800],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}

Widget changeContainer() {
  return NewContainer();
}
Widget changeContainerToFirst() {
  return FirstContainer();
}


