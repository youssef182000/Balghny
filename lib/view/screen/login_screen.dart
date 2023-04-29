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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 120,
                      child: Image.asset('assets/images/t2.png')),
                ],
              ),
              SizedBox(height: 20,),
              Container(child: Text("Create Your Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              SizedBox(height: 20,),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email here',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password here',
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye)

                    ),
                  ),

                ],),),
              SizedBox(height: 20,),
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
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Expanded(child:  Center(child: Text("Or Sign in with",style: TextStyle(color: Colors.grey),)))
                ],),
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
                                    fontWeight: FontWeight.bold,
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
                                "Continue with facebook",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
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
                    Text("Don't have an account?"),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed("home");
                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.green),))
                  ],),

              ],),),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 120,
                      child: Image.asset('assets/images/t2.png')),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
