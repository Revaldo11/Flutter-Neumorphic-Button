import 'package:flutter/material.dart';
import 'package:flutter_animated/neumorphic_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isButtonPressed=false;
  void buttonPressed(){
    setState(() {
      if(isButtonPressed==false){
        isButtonPressed=true;
      }else{
        isButtonPressed=false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: NeumorphicButton(
            onTap: buttonPressed,
            isButtonPressed: isButtonPressed,
          ),
        ),
      ),
    );
  }
}
