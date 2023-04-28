import 'package:flutter/material.dart';

class Res extends StatelessWidget {
    final String img;
     Res({required this.img});
 // const Res({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "$img",
            height: 400,
            width: 400,
          )
      ],),),
    );
  }
}
