import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../profile.dart';

AppBar buildAppBar(double width, BuildContext context,GlobalKey<ScaffoldState> key, double height) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_){
          return ProfileScreen();
        }));
      },
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.jpg'),
      ).p4().pOnly(left: width * 0.01),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Mohammed Almazouzi', style: TextStyle(color: Colors.white, fontSize: width * 0.05),),
        Text('@MoeAlm', style: TextStyle(color: Colors.white24, fontSize: width * 0.045)),
      ],
    ),
    actions: [
      IconButton(onPressed: (){
        key.currentState!.openEndDrawer();
      }, icon: Icon(Icons.menu, color: Colors.white, size: height * 0.057,))
    ],
  );
}
