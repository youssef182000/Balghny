import 'package:flutter/material.dart';



class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  Container(
                     margin: EdgeInsets.only(top: 80),
                    child: Text("Create Your Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                ],
              ),


              SizedBox(height: 10,),
              Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile1.jpg'),
                          radius: 50,
                        ),
                      ),
                      InkWell(onTap: (){},
                        child: Container(margin: EdgeInsets.only(top: 70),
                            child: Center(child: Icon(Icons.add_circle,color: Colors.grey,))),
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your name here',
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
                  SizedBox(height: 45,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Confirm Password here',
                          labelText: 'Confirm Password',
                        suffixIcon: Icon(Icons.remove_red_eye)
                      ),
                    ),
                  ),
              ],),),
              SizedBox(height: 10,),
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
                        "Sign Up",
                        style: TextStyle(

                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(children: [
              Expanded(child:  Center(child: Text("Or Sign up with",style: TextStyle(color: Colors.grey),)))
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("     Already have an account?",style: TextStyle(fontSize: 15),),
              SizedBox(width: 5,),
              InkWell( onTap: (){
                Navigator.of(context).pushNamed("login");
              },
                  child: Text("Sign in",style: TextStyle(color: Colors.green,fontSize: 15),))
            ],),

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
