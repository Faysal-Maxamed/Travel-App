import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travel_app/detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1B1F4B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Opacity(
                    opacity: 0.5, // Decrease opacity to 50%
                    child: Image.asset(
                      "images/2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                "Mogadishu, Somalia",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 190,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        offset: Offset(3, 7),
                        color: Colors.black.withOpacity(0.15),
                      )
                    ]),
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerWidget(
                            texttitle: "One-way",
                            btncolor: true,
                            txtcolor: true,
                          ),
                          ContainerWidget(
                            texttitle: "Round-trip",
                            btncolor: false,
                            txtcolor: false,
                          ),
                          ContainerWidget(
                            texttitle: "Multi-city",
                            btncolor: false,
                            txtcolor: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailScreen(),
                              ),
                            ),
                            child: FlightWidget(
                              firstText: "DXB",
                              locationText: "Dubai,UAE",
                              whereText: "From",
                            ),
                          ),
                          Positioned(
                              right: 10,
                              bottom: -15,
                              child: IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4C6EF5)),
                                onPressed: () {},
                                icon: Icon(LineIcons.alternateExchange,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlightWidget(
                        firstText: "SEO",
                        locationText: "Seoul,Korea",
                        whereText: "To",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Departure",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            Text(
                              "Sat,8 mar 2025",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: 70,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Passengers"),
                                  Text(
                                    "1 Adult",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: 70,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Class"),
                                  Text(
                                    "Economy",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4C6EF5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(double.infinity, 50)),
                        child: Center(
                          child: Text(
                            "Search flights",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlightWidget extends StatelessWidget {
  const FlightWidget(
      {super.key,
      required this.firstText,
      required this.whereText,
      required this.locationText});
  final firstText;
  final whereText;
  final locationText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(LineIcons.plane), Text(firstText)],
            ),
            SizedBox(
              width: 7,
            ),
            Container(
              height: 60,
              width: 1,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  whereText,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Text(
                  locationText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.0),
                ),
              ],
            )
          ],
        ));
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key,
      required this.texttitle,
      required this.btncolor,
      required this.txtcolor});
  final String texttitle;
  final bool btncolor;
  final bool txtcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: btncolor ? Color(0xff4C6EF5) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: 90,
        child: Center(
          child: Text(
            texttitle,
            style: TextStyle(color: txtcolor ? Colors.white : Colors.black),
          ),
        ));
  }
}
