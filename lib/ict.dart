import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IctPage extends StatefulWidget {
  const IctPage({Key? key}) : super(key: key);

  @override
  State<IctPage> createState() => _ictPageState();
}

class _ictPageState extends State<IctPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter",
      home: details(),
    );
  }
}

class details extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ICT Time Table Here",style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}