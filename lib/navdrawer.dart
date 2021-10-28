// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_navigation/bottomnavbar.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //isian menu dari navdrawer
          //header
          drawerHeader(context),
          //draweritem
          drawerItem(Icons.folder, 'Files', () {
            Route myRoute = MaterialPageRoute(
              builder: (context) => BottomNavBar(),
            );
            Navigator.push(context, myRoute);
          }),
          drawerItem(Icons.share, 'Share', () {
            print('Menekan Share');
          }),
          drawerItem(Icons.access_alarm_outlined, 'Recent', () {
            print('Menekan Recent');
          }),
          drawerItem(Icons.delete, 'Trash', () {
            print('Menekan Trash');
          }),
          Divider(
            height: 24.0,
            thickness: 6,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              bottom: 10.0,
            ),
          ),
          drawerItem(Icons.bookmark, 'Bookmark', () {
            print('Menekan Bookmark');
          })
        ],
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Muhammad Ramadhon'),
      accountEmail: Text('doon13@email.com'),
      currentAccountPicture: GestureDetector(
        onTap: () {
          //route menuju detail account
        },
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      otherAccountsPictures: <Widget>[
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget drawerItem(IconData icon, String text, GestureTapCallback onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
