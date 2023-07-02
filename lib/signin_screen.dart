import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unigate/firebase_services.dart';
import 'package:unigate/home.dart';
import 'package:unigate/main_page.dart';
import 'package:unigate/reusable_widget/reusable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  RoundedLoadingButtonController googleController = RoundedLoadingButtonController();
  RoundedLoadingButtonController facebookController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFE1DDDD),
                Color(0xFF2E55D5),
              ]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, MediaQuery
              .of(context)
              .size
              .height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget('assets/unigate.png'),
              SizedBox(
                height: 40,
              ),

              Text(
                "Welcome To UniGate Learning Management System ",
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedLoadingButton(
                      color:Colors.white70,
                      controller: googleController,
                      width: MediaQuery.of(context).size.width * 0.80,
                      successColor: Colors.red,
                      elevation: 0,
                      borderRadius: 25,
                      onPressed: () async {
                        await FirebaseServices().signInWithGoogle();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      },
                  child: Wrap(
                    children: [
                      Image.asset(
                        "assets/google-logo.png",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                      )
                    ],
                  )
                  ),

                  SizedBox(height: 20,),
                  RoundedLoadingButton(
                      color:Colors.white70,
                      controller: googleController,
                      width: MediaQuery.of(context).size.width * 0.80,
                      successColor: Colors.red,
                      elevation: 0,
                      borderRadius: 25,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      },
                      child: Wrap(
                        children: [
                          Image.asset(
                            "assets/logo-facebook.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Sign in with Facebook",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          )
                        ],
                      )
                  ),


                  SizedBox(height: 20,),
                  RoundedLoadingButton(
                      color:Colors.white70,
                      controller: googleController,
                      width: MediaQuery.of(context).size.width * 0.80,
                      successColor: Colors.red,
                      elevation: 0,
                      borderRadius: 25,
                      onPressed: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      },
                      child: Wrap(
                        children: [
                          Image.asset(
                            "assets/apple-logo.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Sign in with Apple",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          )
                        ],
                      )
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
