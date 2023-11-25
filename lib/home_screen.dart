import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "fiverr",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
                    ),
                    Icon(Icons.diamond),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 55,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ]),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 15),
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                      hintText: "Search Services",
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Services",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    services_card(
                      image: "assets/images/logo-design.jpg",
                      title: "Logo Design",
                    ),
                    services_card(
                      image: "assets/images/business-card.jpg",
                      title: "Business Cards",
                    ),
                    services_card(
                      image: "assets/images/influencer-marketing2.jpg",
                      title: "Influencer Marketing",
                    ),
                    services_card(
                      image: "assets/images/logo-animation2.jpg",
                      title: "Logo Animation",
                    ),
                    services_card(
                      image: "assets/images/web-traffic2.jpg",
                      title: "Web Traffic",
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 300,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/bottom-banner-image.jpg'),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class services_card extends StatelessWidget {
  const services_card({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              image,
              height: 150,
              width: 150,
            ),
          ),
          Container(
            height: 80,
            width: 150,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.grey.withOpacity(0.8),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
          // Text("Hello"),
        ],
      ),
    );
  }
}

// return Scaffold(
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.only(top: 10, right: 10, left: 10),
//           height: 40,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "fiverr.",
//                 style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
//               ),
//               Icon(Icons.diamond)
//             ],
//           ),
//         ),
//       ),
//     );