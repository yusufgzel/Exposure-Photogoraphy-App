import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("exposure",style: GoogleFonts.comfortaa(),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: Row(
                children: <Widget>[
                  Text("Register",
                      style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.black,
                      height: 50,
                      width: 350,
                    ),
                    Positioned(
                        top: 3,
                        left: 3,
                        bottom: 3,
                        right: 3,
                        child: Container(
                            color: Colors.white,
                            height: 20,
                            width: 200,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    style: GoogleFonts.comfortaa(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        fillColor: Colors.white,
                                        labelStyle: GoogleFonts.comfortaa(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                        hintText: " Write your ID",
                                        hintStyle: GoogleFonts.comfortaa(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black,
                                        )),
                                  ),
                                )))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  height: 52,
                  width: 350,
                ),
                Positioned(
                    top: 3,
                    left: 3,
                    bottom: 3,
                    right: 3,
                    child: Container(
                      color: Colors.black,
                      height: 20,
                      width: 100,
                      child: Center(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13),
                          )),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
