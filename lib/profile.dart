import 'package:fiverr_app/profile_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(),
      body: const Body(),
    );
  }

  AppBar profileAppBar() {
    // I have done this thing.
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF16561F),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.diamond),
        ),
      ],
    );
  }
}
