import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SftPage extends StatefulWidget {
  const SftPage({Key? key}) : super(key: key);

  @override
  State<SftPage> createState() => _sftPageState();
}

class _sftPageState extends State<SftPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter",
      home: details(),
    );
  }
}

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SFT Time Table Here", style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}

