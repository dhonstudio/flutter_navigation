// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/bottomnavbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Navigation',
      home: BottomNavBar(),
    );
  }
}

class SimpleNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Simple Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The Simple Navigation',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(12.0)),
            Text('Home Page'),
            Padding(padding: EdgeInsets.all(12.0)),
            ElevatedButton(
                onPressed: () {
                  //membuat navigation
                  Route myRoute = MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  );
                  Navigator.push(context, myRoute);
                },
                child: Text('Tap to About Page'))
          ],
        ),
      ),
    ));
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('About Page'),
            Padding(padding: EdgeInsets.all(12.0)),
            ElevatedButton(
                onPressed: () {
                  //membuat navigation kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
                child: Text('Tap to About Page')),
            Padding(padding: EdgeInsets.all(12.0)),
            ElevatedButton(
                onPressed: () {
                  //membuat navigation
                  Route myRoute = MaterialPageRoute(
                    builder: (context) => GalleryPage(),
                  );
                  Navigator.push(context, myRoute);
                },
                child: Text('Tap to Gallery Page'))
          ],
        ),
      ),
    ));
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Gallery Page'),
          ],
        ),
      ),
    ));
  }
}
