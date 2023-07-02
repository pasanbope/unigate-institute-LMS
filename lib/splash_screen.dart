import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unigate/home.dart';
import 'package:unigate/main_page.dart';
import 'package:unigate/search_page.dart';
import 'package:unigate/signin_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)=>SignInScreen())));
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFEF3030),
              Color(0xFF2E55D5),
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Lottie.asset('assets/loader.json',
               width: 300,height: 300,
               alignment: Alignment.center),

            Text("UNIGATE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            Text("Your Tution Partner.. ",
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12),
            ),

          ],
        ),
      ),
    );
  }
  }