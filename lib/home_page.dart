
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color colorContainer = Colors.deepOrange;
  BoxShape shapeContainer = BoxShape.rectangle;

  void checkColor(){
    setState(() {
      colorContainer==Colors.deepOrange? colorContainer=Colors.purpleAccent : colorContainer=Colors.deepOrange;
    });
  }

  void checkShape(){
    setState(() {
      shapeContainer==BoxShape.rectangle? shapeContainer=BoxShape.circle : shapeContainer=BoxShape.rectangle;
    });
  }

  void changeContainer(){
    setState(() {
      checkColor();
      checkShape();
    });
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
      body: Center(
        child: InkWell(
          onTap: changeContainer, // НЕ поняла почему без () вызываем
          child: Container(
            child: Center(
              child: Text('Click me!!!',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),

              ),
            ),
            decoration: BoxDecoration(
              color: colorContainer,
                shape: shapeContainer,
            ),
            height: 300,
            width: 300,


          ),
        ),
      ) ,
    );
  }
}
