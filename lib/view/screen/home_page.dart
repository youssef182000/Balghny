import 'package:balghny/view/widget/defaultBtn.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  Widget currentScreen =  HomePage();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 24,left: 2,right: 2),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 240,
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.green[200], // Background color
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120),
                    ),
                  ),
                  child: Container(
                    height: 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green[200],

                    ),
                    child:
                    CircleAvatar(backgroundImage: AssetImage("assets/images/logo.jpg")),
                  ),
                ),
              ),

               /*  Container(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: (AssetImage("assets/images/my.jpg")),
                  ),
                  accountName: Text("Ahmed Ashraf"),
                  accountEmail: Text("ahmedashraf@gmail.com"),
                ),
              ),*/
              Expanded(
                  flex: 5,
                  child: Column(children: [

                    SizedBox(height: 20,),

                ListTile(
                  title: Text("My Profile"),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.of(context).pushNamed("home");
                  },
                ),
                    ListTile(
                      title: Text("HomePage"),
                      leading: Icon(Icons.home),
                      onTap: () {
                        Navigator.of(context).pushNamed("home");
                      },
                    ),
                    ListTile(
                      title: Text("About Us"),
                      leading: Icon(Icons.dataset),
                      onTap: () {},
                    ),


                ListTile(
                  title: Text("Contact Us"),
                  leading: Icon(Icons.mail),
                  onTap: () {},
                ),

                ListTile(
                  title: Text("Helps & FAQs"),
                  leading: Icon(Icons.help_center),
                  onTap: () {
                    Navigator.of(context).pushNamed("login");
                  },
                ),
              ],)),

              // SizedBox(height: 20,),
              Expanded(
                flex: 1,
                child: Row(children: [
                  defaultButton(text: 'Log Out',
                      function: (){}),
                 /* InkWell(onTap: (){
                    print("Facebook");
                  },child: Container(
                    padding: EdgeInsets.all(5),
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Icon(Icons.power_settings_new),
                        Stack(children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 2),
                            child: Icon(
                                Icons.power_settings_new,color: Colors.deepOrangeAccent),
                          )
                        ],),
                        SizedBox(width: 10,),
                        Text("Log Out",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)

                      ],),
                  ),)*/
                ],),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child:  Column(children: [
            SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 5,),

                  // margin: EdgeInsets.only(left: 20, top: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Builder(
                      builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 15,
                            ));
                      }
                  )),
               SizedBox(width: 30),
              Column(children: [

              ],),
              Text('Choose your report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              SizedBox(width: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset("assets/images/my.jpg",width: 35,height: 35,) ,
              ),
            ],),



      /*    Row(children: [
            Expanded(flex: 1,child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 10, top: 10),

                // margin: EdgeInsets.only(left: 20, top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Builder(
                    builder: (context) {
                      return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 15,
                          ));
                    }
                )),),
            Expanded(flex: 5,child: Container()),
            Expanded(flex: 1,child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset("assets/images/my.jpg",width: 40,height: 40,) ,
            ),)
          ],),
*/
          Expanded(flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(children: [
                SizedBox(height: 20,),
          /*      Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Choose your report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  ],
                ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  ],
                ),

                //Text('بلاغك',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
              ],),
            ),
          ),

     Expanded(
       flex: 7,
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               InkWell(
                 onTap: ()=> Navigator.of(context).pushNamed("cam"),
                 child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                     height: 180,
                     width: 170,
                     decoration: BoxDecoration(
                         color: Colors.grey[200],
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child:
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(10.0),
                           child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                         ),
                         SizedBox(height: 5,),
                         //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                         Container(
                             margin: EdgeInsets.only(right: 20),
                             child: Text("Fire Disaster",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                         SizedBox(height: 5,),
                       ],
                     )),
               ),
               SizedBox(width: 20,),
               InkWell(
                 onTap: ()=> Navigator.of(context).pushNamed("cam2"),
                 child: Container(
                   //margin: EdgeInsets.only(bottom: 20),
                   // padding: EdgeInsets.all(5),
                     height: 180,
                     width: 170,
                     decoration: BoxDecoration(
                         color: Colors.grey[200],
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child:
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(10.0),
                           child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                         ),
                         SizedBox(height: 5,),
                         //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                         Container(
                             margin: EdgeInsets.only(right: 20),
                             child: Text("Water disaster",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                         SizedBox(height: 5,),
                       ],
                     )),
               ),
             ],),

             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam3"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("Infrastructure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
                 SizedBox(width: 20,),
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam4"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("Accidents",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
               ],),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("New Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
                 SizedBox(width: 20,),
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam2"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("New Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
               ],),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("New Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
                 SizedBox(width: 20,),
                 InkWell(
                   onTap: ()=> Navigator.of(context).pushNamed("cam2"),
                   child: Container(
                     //margin: EdgeInsets.only(bottom: 20),
                     // padding: EdgeInsets.all(5),
                       height: 180,
                       width: 170,
                       decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image.asset("assets/images/r1.jpg",width:double.infinity,height: 145,fit: BoxFit.fill,) ,
                           ),
                           SizedBox(height: 5,),
                           //   Image.asset("assets/images/r1.jpg",width: 150,height: 130,fit: BoxFit.fill,),
                           Container(
                               margin: EdgeInsets.only(right: 20),
                               child: Text("New Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                           SizedBox(height: 5,),
                         ],
                       )),
                 ),
               ],),
           ],
         ),
       ),
     ),





        ],)
      )),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pushNamed("home");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(() {
                          currentScreen =  HomePage();
                          currentTab = 0;

                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.dark_mode_rounded,
                                color: currentTab == 1
                                    ? const Color(0xFF1ABC00)
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("scan");
                          },
                          icon: Icon(Icons.translate_outlined,
                              color: currentTab == 2
                                  ? Colors.green
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    child: MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(() {

                          currentScreen =  HomePage();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("notification");
                            },
                            icon: Icon(Icons.notifications_active,
                                color: currentTab == 4
                                    ? Colors.green
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen =  HomePage();
                        currentTab = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("profile");

                          },
                          icon: Icon(Icons.person,
                              color: currentTab == 5
                                  ? Colors.green
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
