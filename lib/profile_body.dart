import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 150,
              color: const Color(0xFF16561F),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 15),
                    child: CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image:
                              AssetImage('assets/images/logo-animation2.jpg'),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Anas Qasim",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(1, 1),
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.25))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Seller mode",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
