import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authantication/login.dart';
import 'authantication/register.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Column(
          children: <Widget>[

            Container(
              constraints: BoxConstraints.expand(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 105),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/back.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 105,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image:
                            new AssetImage("assets/slr (1).png"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("exposure",
                          style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => Login()),);
                  },
                  child: Stack(children: <Widget>[
                    Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.black,),height: 50,width: 150,),
                    Positioned(top: 3,left:3,bottom:3,right:3,child: Container(color: Colors.white,height: 20,width: 100,child: Center(child: Text("LOG IN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),)),
                  ],

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => Register()),);
                  },
                  child: Stack(children: <Widget>[
                    Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.black,),height: 50,width: 150,),
                    Positioned(top: 3,left:3,bottom:3,right:3,child: Container(color: Colors.black,height: 20,width: 100,child: Center(child: Text("REGISTER",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),)),
                  ],

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
