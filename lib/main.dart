import 'package:flutter/material.dart';

import 'dataModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff065e54),
        title: Text('Profile'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Icon(Icons.notifications),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.greenAccent),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff065e54),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Container(
                    // width: MediaQuery.of(context).size.width*0.8,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 5.0)),
                        ]),
                    child: SizedBox(
                      height: 60,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Hello, Muneef',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xff065e54)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '+91 9876543210',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff065e54)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "HR Department (Dhaka Office)",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff34eb95),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.4,
                  // right: 130,
                  // left: 130,
                  top: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://image.winudf.com/v2/image1/bmV0LndsbHBwci5ib3lzX3Byb2ZpbGVfcGljdHVyZXNfc2NyZWVuXzBfMTY2NzUzNzYxN18wOTk/screen-0.webp?fakeurl=1&type=.webp"),
                    radius: 40,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff065e54),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return cards(context, index);
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .95,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff34eb95),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "LOG OUT",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget cards(BuildContext context, int index) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 14),
        width: MediaQuery.of(context).size.width * .95,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, spreadRadius: 1, blurRadius: 1)
            ]),
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: data[index].iconBgColor,
            ),
            child: Icon(
              data[index].icon,
              color: data[index].iconColor,
            ),
          ),
          title: Text(
            data[index].label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          trailing: data[index].trailing,
        ),
      ),
    );
  }
}
