// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      locale: Locale('ch', 'TW'),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/typemoon.png'),
        title: (Text(
          'Fate Series',
          style: TextStyle(fontSize: 30, color: Colors.black),
        )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              child: Text(
                'Fate/Stay Nigh',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FSN()),
                );
              },
            ),
            Image.asset(
              'assets/fsn04.jpeg',
              scale: 0.5,
            ),
            Text(
              'Fate/Hollow Ataraxia',
              style: TextStyle(fontSize: 35, color: Colors.red),
            ),
            Image.asset(
              'assets/fha.jpeg',
              scale: 0.5,
            ),
            Text(
              'Fate/Grand Order',
              style: TextStyle(fontSize: 35, color: Colors.red),
            ),
            Image.asset(
              'assets/fgo.jpeg',
              scale: 0.5,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutMe(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FSN extends StatelessWidget {
  const FSN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路線', style: TextStyle(fontSize: 40, color: Colors.blue),),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '有三條：',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '[Fate]',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '[Unlimited Blade Works]',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "[Heaven's Feel]",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutMe(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me',
          style: TextStyle(fontSize: 35, color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nickname:PSP',
              style: TextStyle(fontSize: 30),
            ),
            
                Image.asset('assets/psp.jpeg'),
                Text(
              'EMail',
              style: TextStyle(fontSize: 30),
            ),
                Icon(
                  Icons.email,
                  size: 50,
                ),
                Text('hj145d@gmail.com', style: TextStyle(fontSize: 20, color: Colors.grey), ),
              
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutMe(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
