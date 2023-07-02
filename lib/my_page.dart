import 'package:flutter/material.dart';
import 'package:unigate/firebase_services.dart';
import 'package:unigate/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            SizedBox(
              height: 20,
            ),
            Text("${FirebaseAuth.instance.currentUser!.displayName}"),
            Text("${FirebaseAuth.instance.currentUser!.email}"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
            onPressed: () async{
            await FirebaseServices().signOut();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>SignInScreen()));
          },
            child: Text("Logout"),)],
        ),
        ),
      );
  }
}
