import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Container(
               height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50.0),
              bottomLeft: Radius.zero,
              bottomRight: Radius.zero,
            )
            ),
           child:Center(
             child: Text('Profile'),
           )
    );
  }
}