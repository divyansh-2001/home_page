import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //  String name;
//  double subject1;
//  double subject2;
//  double subject3;
//  double subject4;
//  double subject5;
//  double subject6;
//  double subject7;

  @override
  Widget build(BuildContext context) {
    var accessibility_new_outlined;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10.0, 0, 30.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome - ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15.0,
//                    fontFamily:
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Dashboard',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
//                        color:
//                      fontFamily:
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  //initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                ),
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                items: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 6.0,
                        animation: true,
                        percent: 0.7, //to be changed
                        center: Text(
                          "70%", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        footer: Text(
                          "subject1", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.red,
                      ),
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 6.0,
                        animation: true,
                        percent: 0.87, //to be changed
                        center: Text(
                          "87%", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        footer: Text(
                          "subject2", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.green,
                      ),
//                      CircularPercentIndicator(
//                        radius: 100.0,
//                        lineWidth: 6.0,
//                        animation: true,
//                        percent: 0.62, //to be changed
//                        center: Text(
//                          "62%", //to be changed
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold, fontSize: 20.0),
//                        ),
//                        footer: Text(
//                          "subject3", //to be changed
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold, fontSize: 20.0),
//                        ),
//                        circularStrokeCap: CircularStrokeCap.round,
//                        progressColor: Colors.yellow,
//                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 6.0,
                        animation: true,
                        percent: 0.7, //to be changed
                        center: Text(
                          "70%", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        footer: Text(
                          "subject1", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.red,
                      ),
//                      CircularPercentIndicator(
//                        radius: 100.0,
//                        lineWidth: 6.0,
//                        animation: true,
//                        percent: 0.87, //to be changed
//                        center: Text(
//                          "87%", //to be changed
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold, fontSize: 20.0),
//                        ),
//                        footer: Text(
//                          "subject2", //to be changed
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold, fontSize: 20.0),
//                        ),
//                        circularStrokeCap: CircularStrokeCap.round,
//                        progressColor: Colors.green,
//                      ),
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 6.0,
                        animation: true,
                        percent: 0.62, //to be changed
                        center: Text(
                          "62%", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        footer: Text(
                          "subject3", //to be changed
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffe8e8e8),
                  borderRadius: BorderRadius.all(Radius.circular(15.0),
                  ),
                ),
                margin: EdgeInsets.only(top: 30.0),
                height: 300.0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(

                            height: 120,
                            width: 120,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {});
                              },
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/attendence.jpeg'),
                                  Text('Attendence'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {});
                              },
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/ciculars.jpeg'),
                                  Text('Notices'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [

                                  Image.asset('images/notices.jpeg'),
                                  Text('To-Do'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {});
                              },
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/timetable.jpeg'),
                                  Text('Time-Table'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     child: Text(
                       'Your Schedule',
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         color : Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 30.0,
                       ),
                     ),
                     padding: EdgeInsets.fromLTRB(15.0, 8.0, 0, 8.0),
                   ),
                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(30.0 , 10.0, 10.0 ,0),
                         decoration: BoxDecoration(
                           color: Colors.lightBlueAccent.withOpacity(0.5),
                           borderRadius: BorderRadius.all(Radius.circular(10.0),
                           ),
                         ),
                         height: 60.0,
                         width: 60.0,
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(vertical: 0 , horizontal: 3.0),
                         width: 0.3,
                         color: Colors.black,
                         height: 100,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(10.0 ,25.0,0,5.0),
                         decoration: BoxDecoration(
                           color: Color(0xffEDDBFB),
                           borderRadius: BorderRadius.all(Radius.circular(10.0),
                           ),
                         ),
                         width: 270.0,
                         height: 150.0,
                       ),
                     ],
                   ),

//                   SizedBox(
//                     height : 15.0,
//                   ),
                   Row(
                     children: [
                       Container(
                         height: 60.0,
                         width: 60.0,
                         decoration: BoxDecoration(
                           color: Colors.lightBlueAccent.withOpacity(0.5),
                           borderRadius: BorderRadius.all(Radius.circular(10.0),
                           ),
                         ),
                         margin: EdgeInsets.fromLTRB(30.0 , 10.0, 10.0 ,0),
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(vertical: 0 , horizontal: 3.0),
                         width: 0.3,
                         color: Colors.black,
                         height: 100,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(10.0 ,25.0,0,5.0),
                         decoration: BoxDecoration(
                           color: Color(0xffEDDBFB),
                           borderRadius: BorderRadius.all(Radius.circular(10.0),
                           ),
                         ),
                         width: 270.0,
                         height: 150.0,
                       ),
                     ],
                   ),
                 ],
               ),
             ),
            ],
          ),
        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
