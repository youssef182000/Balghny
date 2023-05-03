import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Stack(children: [
                    Container(child: Image.asset('assets/images/111.png',width: 120,height: 125,)),
                    Container(
                        margin: EdgeInsets.only(left: 2,top: 3),
                        child: Image.asset('assets/images/22.png',width: 110,height: 110,)),
                  ],),


                ],
              ),
              SizedBox(height: 20,),
              Container(child: Text("Login to your account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              SizedBox(height: 20,),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [

                  SizedBox(height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email here',
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(height: 45,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your password here',
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.remove_red_eye)

                      ),
                    ),
                  ),

                ],),),
              SizedBox(height: 15,),
              Container(child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("home");
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)))),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(

                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(children: [
                  Expanded(child:  Center(child: Text("Or Sign in with",style: TextStyle(color: Colors.grey),)))
                ],),
                SizedBox(height: 5,),
                Stack(
                  children: [
                    Row(
                      children: [

                        Expanded(
                          child:  Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                //   Navigator.of(context).pushNamed("login");
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)))),
                              child: const Text(
                                "Continue with google",
                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20,top: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Google.png'),
                        radius: 19,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Stack(
                  children: [
                    Row(
                      children: [

                        Expanded(
                          child:  Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                //   Navigator.of(context).pushNamed("login");
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)))),
                              child: const Text(
                                "    Continue with facebook",
                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20,top: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Face.png'),
                        radius: 19,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("     Don't have an account?",style: TextStyle(fontSize: 15)),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed("register");
                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.green,fontSize: 15),))
                  ],),
                SizedBox(height: 20,),

              ],),),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(children: [
                    Container(child: Image.asset('assets/images/33.png',width: 120,height: 125,)),
                    Container(
                        margin: EdgeInsets.only(left: 10,top: 15),
                        child: Image.asset('assets/images/44.png',width: 110,height: 110,)),
                  ],),


                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
