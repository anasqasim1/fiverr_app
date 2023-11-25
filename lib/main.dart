import 'package:fiverr_app/home_screen.dart';
import 'package:fiverr_app/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int myIndex = 0;
  List<Widget> screens = [const HomeScreen(), const Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: screens[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          selectedItemColor: Colors.green,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "user"),
          ],
        ),
      ),
    );
  }
}
