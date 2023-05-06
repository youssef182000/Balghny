// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Padding(
          padding: EdgeInsets.all(0),
          child: Column(children: [

           
           Expanded(
             child: Stack(children: [

               Container(
                 height: 300,
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: Colors.green[200], // Background color
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(250),
                     bottomRight: Radius.circular(250),
                   ),
                 ),
                 child: Center(
                   child: ClipOval(
                     child: Container(
                       height: 212,
                       width: 222,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(
                             color: Colors.white,
                             width: 10.0,
                             style: BorderStyle.solid),
                         borderRadius: BorderRadius.all(
                           Radius.circular(120), // Border radius
                         ),
                       ),
                       child:
                       CircleAvatar(backgroundImage: AssetImage("assets/images/logo.jpg")),
                     ),
                   ),
                 ),
               ),

               Row(children: [
                 IconButton(onPressed: (){ Navigator.of(context).pushNamed("home");}, icon: Icon(Icons.arrow_back,color: Colors.white,))
               ],),
             ],),
           ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[50], // Background color
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text("About Us ",
                            style: TextStyle(
                                wordSpacing: 2,
                                fontSize: 23,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Text(
                                  "Within the framework of Tire and Building Modern Egypt, represented by the Egyptian state,to support the level of road service and improve the quality of life and prosperity in Egyptian citiesTo respond to the aspirations and needs of generations to come and to achieve the residents' happiness and well-being",
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      // ),
    );
  }
}
