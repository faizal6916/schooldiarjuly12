import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/bottomNavBar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/customAppbar.dart';

class AboutSceen extends StatefulWidget {
  const AboutSceen({Key? key}) : super(key: key);

  @override
  State<AboutSceen> createState() => _AboutSceenState();
}

class _AboutSceenState extends State<AboutSceen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'About Us',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: 1.sw,
                height: 1.sh,
                //color: Colors.red,
              ),
              Positioned(
                top: -100,
                child: Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/about_us_bg.png'))
                  ),
                  child: Image.asset('assets/images/play_button.png'),
                ),
              ),
              Positioned(
                top: 140,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.only(left: 36, top: 23),
                  width: 1.sw - 40,
                  height: 0.79.sh,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1, 1),
                        //spreadRadius: 2
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //About
                      Text(
                        "About",
                        style: TextStyle(
                          color: Color(0xff517bfa),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Axiforma",
                          fontStyle: FontStyle.normal,
                          fontSize: 19.sp,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      //Image
                      Image(image: AssetImage('assets/images/Logo2.png'),height: 0.07.sh,),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      // Version
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Version",
                          style: TextStyle(
                              color: Color(0xff787878),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Axiforma",
                              fontStyle: FontStyle.normal,
                              fontSize: 10.0),
                        ),
                      ),

                      // V. 0.1.01
                      Text(
                        "V. 0.1.01",
                        style: TextStyle(
                            color: Color(0xff39398b),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontStyle: FontStyle.normal,
                            fontSize: 11.0),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      // Details
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Details",
                          style: TextStyle(
                              color: Color(0xff787878),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Axiforma",
                              fontStyle: FontStyle.normal,
                              fontSize: 10.0),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      // A digital school diary that helps to keep updated
                      Text(
                        "A digital school diary that helps  to keep updated about your child.",
                        style: TextStyle(
                            color: Color(0xff787878),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontStyle: FontStyle.normal,
                            fontSize: 11.0),
                      ),
                      SizedBox(
                        height: 0.015.sh,
                      ),
                      Text(
                        "You will get,.",
                        style: TextStyle(
                            color: Color(0xff787878),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontStyle: FontStyle.normal,
                            fontSize: 11.0),
                      ),
                      SizedBox(
                        height: 0.015.sh,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                              angle: 4,
                              child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(1)),
                                      color: Color(0xfff7993b)))),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //Instant attendance notification
                          Text(
                            'Instant attendance notification',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                              angle: 4,
                              child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(1)),
                                      color: Color(0xfff7993b)))),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //General circulars in alerts
                          Text(
                            'General circulars in alerts',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                              angle: 4,
                              child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(1)),
                                      color: Color(0xfff7993b)))),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //Academic notifications in assignments
                          Text(
                            'Academic notifications in assignments',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Transform.rotate(
                                angle: 4,
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(1)),
                                        color: Color(0xfff7993b)))),
                          ),
                          SizedBox(
                            width: 0.018.sw,
                          ),

                          //Academic calendar with events and exam schedules
                          Expanded(
                            child: Text(
                              'Academic calendar with events and exam schedules',
                              style: TextStyle(
                                  color: Color(0xff787878),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Axiforma",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Transform.rotate(
                                angle: 4,
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(1)),
                                        color: Color(0xfff7993b)))),
                          ),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //Pending and paid fee details with option to pay  online and get receipts by email
                          Expanded(
                            child: Text(
                              'Pending and paid fee details with option to pay  online and get receipts by email',
                              style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                              angle: 4,
                              child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(1)),
                                      color: Color(0xfff7993b)))),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //Online exams and its results
                          Text(
                            'Online exams and its results ',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.007.sh,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                              angle: 4,
                              child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(1)),
                                      color: Color(0xfff7993b)))),
                          SizedBox(
                            width: 0.018.sw,
                          ),
                          //Report cards
                          Text(
                            'Report cards',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}