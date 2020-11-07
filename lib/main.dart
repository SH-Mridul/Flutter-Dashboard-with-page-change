import 'package:Dashboard/screen/home.dart';
import 'package:Dashboard/screen/profile.dart';
import 'package:Dashboard/screen/settings.dart';
import 'package:flutter/material.dart';
 

 void main() => runApp(MaterialApp(
                debugShowCheckedModeBanner: false,
                home : MyApp()));




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index = 0;
  List<Widget> pages = [
      Home(),
      Profile(),
      Settings()
  ]; 



  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            backgroundColor:Colors.purple,
            appBar: AppBar(
              elevation: 0,
              title: Text('Chats'),
              centerTitle: true,
              backgroundColor: Colors.purple  
            ),
            drawer: MyDrawer(onTap:(ctx,i){
              setState(() {
                index = i;
                Navigator.pop(ctx);
              });
            }),
            body: pages[index],
      ),
     );
  }
}                



class MyDrawer extends StatelessWidget {

final Function onTap;
MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
             child: ListView(
               children: <Widget>[
                Container(
                  height:200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Text('M'),
                            )
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Mridul Hossain',style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color:Colors.white),),
                      ),
                  ]
                  ),
                  decoration: BoxDecoration(
                    color:Colors.purple,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  ),
                ),

                SizedBox(
                  height: 80,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () => onTap(context,0),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () => onTap(context,1),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => onTap(context,2),
                ),
               ],
              ),
            ),
    );
  }
}