import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';



class MyProfil extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return

      new Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.greenAccent,

          title: Text("Profil"),

          centerTitle: true,

        ),

        body: ListView(

          children: <Widget>[

            Container(

              color: Colors.white,

              child: Stack(

                children: <Widget>[

                  Padding(

                    padding: EdgeInsets.only(top: 3),

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: Container(

                        height: 200,

                        width: 200,

                        decoration: BoxDecoration(



                            image: DecorationImage(image: AssetImage('images/aku.jpeg'),

                                fit: BoxFit.cover

                            )

                        ),

                      ),

                    ),

                  ),

                ],

              ),

            ),



            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  SizedBox(height: 20),

                  Text('BIODATA',

                    style: TextStyle(

                      fontWeight: FontWeight.bold,

                      fontSize: 20,

                      color: Colors.greenAccent,

                    ),

                  ),
                  SizedBox(height: 5),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Nama  : Ni Nyoman Susi Astuti',

                        style: TextStyle(

                            fontSize: 15,

                            color: Colors.black.withOpacity(0.6)

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Email  : susi.astuti@undiksha.ac.id',

                        style: TextStyle(

                            fontSize: 15,

                            color: Colors.black.withOpacity(0.6)

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Alamat : Sulawesi Tengah',

                        style: TextStyle(

                            fontSize: 15,

                            color: Colors.black.withOpacity(0.6)

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('No.HP : 085757327298',

                        style: TextStyle(

                            fontSize: 15,

                            color: Colors.black.withOpacity(0.6)

                        ),

                      ),

                    ],

                  ),
                ],

              ),

            ),



          ],

        ),

      );

  }

}