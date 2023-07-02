import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EtPage extends StatefulWidget {
  const EtPage({Key? key}) : super(key: key);

  @override
  State<EtPage> createState() => _etPageState();
}

class _etPageState extends State<EtPage> {
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
            Text("ET Time Table Here", style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
