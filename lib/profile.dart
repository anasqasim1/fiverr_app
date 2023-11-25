import 'package:fiverr_app/profile_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(),
      body: Body(),
    );
  }

  AppBar profileAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFF16561F),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.diamond),
        ),
      ],
    );
  }
}
