import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unigate/ict.dart';
import 'package:unigate/sft.dart';
import 'package:url_launcher/url_launcher.dart';


import 'et.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  var icons = {"degree.png": "yesman", "facebook.png": "UniGate"};

  // Future<void> _lanchURL(String url) async{
  //   final Uri uri = Uri(scheme: "http",host: url);
  //   if(!await launchUrl(
  //       uri,
  //     mode: LaunchMode.externalApplication,
  //   )){
  //     throw"Cannot launch url";
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      Container(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Row(children: [
            Icon(Icons.menu, size: 30, color: Colors.black54),
            Container(
              width: 50,
              height: 50,
            ),
          ])),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: const EdgeInsets.only(left: 20),
        child: Text(
          "Discover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.only(left: 20),
        child: Text(
          "Classes",
          style: TextStyle(fontSize: 18),
        ),
      ),
      SizedBox(
        height: 10,
      ),


      Container(
        padding: const EdgeInsets.only(left: 20),
          height: 300,
          width: double.maxFinite,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>EtPage()));
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/ET.jpg"), ),borderRadius: BorderRadius.circular(20),color: Colors.grey),
                    // child: Center(child: Text("E Tech",style: TextStyle(fontSize: 32,color:Colors.white)),),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>IctPage()));
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/ICT.jpg"), ),borderRadius: BorderRadius.circular(20),color: Colors.grey),
                    // child: Center(child: Text("ICT",style: TextStyle(fontSize: 32,color:Colors.white)),),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>SftPage()));
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/SFT.jpg"), ),borderRadius: BorderRadius.circular(20),color: Colors.grey),

                    // child: Center(child: Text("SFT",style: TextStyle(fontSize: 32,color:Colors.white)),),
                  ),
                )),
          ])),

          SizedBox(
            height: 25,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "Explore More",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 18,
          ),

          Container(
              padding: const EdgeInsets.only(left: 10),
              height: 80,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () async{
                        final url= "https://www.yesman.lk";

                        if (await canLaunch(url)){
                          await launch(url);
                        }
                      },
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/degree.png"), ),borderRadius: BorderRadius.circular(20),color: Colors.white),

                        // child: Center(child: Text("",style: TextStyle(fontSize: 32,color:Colors.white)),),
                      ),
                    )),

                Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () async{
                        final url= "https://www.facebook.com/unigate.institute?mibextid=LQQJ4d";

                        if (await canLaunch(url)){
                          await launch(url);
                        }
                      },
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(image:DecorationImage(
                            image:AssetImage("assets/facebook.png"),
                            fit: BoxFit.cover ),borderRadius: BorderRadius.circular(20),color: Colors.white54),
                        // child: Center(child: Text("",style: TextStyle(fontSize: 32,color:Colors.white)),),
                      ),
                    )),
                // Padding(
                //     padding: EdgeInsets.only(right: 10),
                //     child: InkWell(
                //       // onTap: () {
                //       //   Navigator.push(context, MaterialPageRoute(builder:(context)=>SftPage()));
                //       // },
                //       child: Container(
                //         width: 80,
                //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white38),
                //         child: Center(child: Text("",style: TextStyle(fontSize: 32,color:Colors.white)),),
                //       ),
                //     )),


              ])),
          SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Yesman                UniGate",style: TextStyle(fontSize: 12),),

          ),




    ]
            )
    )
    );
  }
}
