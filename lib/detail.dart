import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1F4B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 230,
              decoration: BoxDecoration(
                color: Color(0xff1B1F4B),
                image: DecorationImage(
                  image: AssetImage("images/2.png"),
                  opacity: 0.2,
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          side: BorderSide(color: Colors.white, width: 1),
                        ),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Flight Results",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          side: BorderSide(color: Colors.white, width: 1),
                        ),
                        icon: Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DXB",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            "Dubai,UAE",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            LineIcons.plane,
                            color: Colors.white,
                          ),
                          Text(
                            "......................",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SEO",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            "Seoul,korea",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "120 Results Found",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ContainerWidget(
                          texttitle: "\$100-\$800",
                          btncolor: true,
                          txtcolor: true,
                        ),
                        ContainerWidget(
                          texttitle: "Recomended",
                          btncolor: false,
                          txtcolor: false,
                        ),
                        ContainerWidget(
                          texttitle: "Best Seller",
                          btncolor: false,
                          txtcolor: false,
                        ),
                        ContainerWidget(
                          texttitle: "Round",
                          btncolor: false,
                          txtcolor: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TicketWidget(
                    titleText: "Biman BangalaDesh\nArline Ltd",
                    textcolor: Colors.green.shade900,
                    btncolor: Colors.green.shade100,
                    btntext: "Recommended",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TicketWidget(
                    textcolor: Colors.indigo,
                    titleText: "Delta Airlines",
                    btncolor: Colors.indigo.shade100,
                    btntext: "Economy",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TicketWidget(
                    textcolor: Colors.orange,
                    titleText: "Delta Airlines",
                    btncolor: Colors.orange.shade100,
                    btntext: "Economy",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TicketWidget extends StatelessWidget {
  const TicketWidget(
      {super.key,
      required this.titleText,
      required this.btncolor,
      required this.btntext,
      required this.textcolor});

  final titleText;
  final btncolor;
  final btntext;
  final textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   "",
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 25,
                  child: Center(
                    child: Text(
                      btntext,
                      style: TextStyle(color: textcolor),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: btncolor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DXB",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      "Dubai,UAE",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "09:00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      LineIcons.plane,
                      color: Color(0xff1B1F4B),
                    ),
                    Column(
                      children: [
                        Text("03h 30m"),
                        Text(
                          "......................",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text("Non-stop")
                      ],
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SEO",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      "Seoul,korea",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "12:30",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 25,
                width: 15,
                decoration: BoxDecoration(
                  color: Color(0xff1B1F4B),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "-------------------------------------------",
                style: TextStyle(
                    letterSpacing: 2.0, fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 15,
                decoration: BoxDecoration(
                  color: Color(0xff1B1F4B),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.confirmation_num_outlined,
                  color: Colors.grey.shade700,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "10 Remaining",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "\$546",
                  style: TextStyle(
                    color: Color(0xff1B1F4B),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
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
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: btncolor ? Color(0xff4C6EF5) : Color.fromARGB(255, 35, 39, 78),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: 100,
        child: Center(
          child: Text(
            texttitle,
            style: TextStyle(color: txtcolor ? Colors.white : Colors.white),
          ),
        ));
  }
}
