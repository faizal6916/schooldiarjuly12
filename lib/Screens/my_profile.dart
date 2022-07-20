import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/bottomNavBar.dart';
import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(menuClr:Color(0xfff2f2f2)),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Profile',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 0.02.sh,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 36, top: 15),
            width: 1.sw - 40,
            height: 0.69.sh,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(15)),boxShadow: [
                BoxShadow(
                color: Colors.black54,
                offset: Offset(1, 1),
                //spreadRadius: 2
                blurRadius: 5)
            ],),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Hello,
                        Text(
                          "Hello,",
                          style:  TextStyle(
                              color:  Color(0xffe8a420),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Axiforma",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.sp),
                        ),
                        RichText(
                          text: TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style:  TextStyle(
                              fontSize: 19.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Axiforma",
                              color: Color(0xff517bfa),
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'Donovan'),
                              TextSpan(text: 'Vargas', style:  TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.1.sw,
                    ),
                    Image(
                      image: AssetImage('assets/images/Profile1.png'),
                    ),
                  ],
                ),
               SizedBox(
                 height: 0.02.sh,
               ),
               Row(
                 children: [
                   Image(image: AssetImage('assets/images/EmailLogo.png'),height: 20,),
                   SizedBox(
                     width: 0.02.sw,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Email",
                         style:  TextStyle(
                             color:   Color(0xff787878),
                             fontWeight: FontWeight.w400,
                             fontFamily: "Axiforma",
                             fontStyle:  FontStyle.normal,
                             fontSize: 7.sp,
                           decoration: TextDecoration.underline,
                         ),),
                    Text("donovanvargan@gmail.com",
                      style:  TextStyle(
                          color:   Color(0xff787878),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Axiforma",
                          fontStyle:  FontStyle.normal,
                          fontSize: 11.sp
                      ),)
                     ],
                   )
                 ],
               ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  children: [
                    Image(image: AssetImage('assets/images/ContactLogo.png'),height: 20,),
                    SizedBox(
                      width: 0.02.sw,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Contact",
                          style:  TextStyle(
                            color:   Color(0xff787878),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontStyle:  FontStyle.normal,
                            fontSize: 7.sp,
                            decoration: TextDecoration.underline,
                          ),),
                        Text("+91 9876 543 210",
                          style:  TextStyle(
                              color:   Color(0xff787878),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Axiforma",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.sp
                          ),)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  children: [
                    Image(image: AssetImage('assets/images/LocationLogo.png'),height: 20,),
                    SizedBox(
                      width: 0.02.sw,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address",
                          style:  TextStyle(
                            color:   Color(0xff787878),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontStyle:  FontStyle.normal,
                            fontSize: 7.sp,
                            decoration: TextDecoration.underline,
                          ),),
                        Container(
                          width: 0.7.sw,
                          child: Text("Keas 69 Str. 15234, Chalandri , Athens, Greece",
                            style:  TextStyle(
                                color:   Color(0xff787878),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontStyle:  FontStyle.normal,
                                fontSize: 11.0.sp,
                            ),maxLines: 5,),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                    width: 0.7.sw,
                    height: 1,
                    decoration: BoxDecoration(
                        color:  Color(0x26c2996e)
                    )
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style:  TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Axiforma",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.sp,
                              color: Color(0xff8829e1),
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'Marcos'),
                              TextSpan(text: ' Emmanuel', style:  TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 0.01.sh,
                        ),
                        Row(
                          children: [
                            Text(
                                "Grade ",
                                style:  TextStyle(
                                    color:   Color(0xff949494),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 10.1.sp
                                ),
                            ),
                            Text(
                              "7B ",
                              style:  TextStyle(
                                  color:   Color(0xff949494),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Axiforma",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.1.sp
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.01.sh,
                        ),
                        Row(
                          children: [
                            Text(
                                "Good Attendance",
                                style:  TextStyle(
                                    color:   Color(0xffe8a420),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 10.1.sp
                                ),
                            ),
                            SizedBox(
                              width: 0.02.sw,
                            ),
                            Text(
                                "80%",
                                style:  TextStyle(
                                    color:   Color(0xffe8a420),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Axiforma",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 10.1.sp
                                ),
                                textAlign: TextAlign.left
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.12.sw,
                    ),
                    Image(image: AssetImage('assets/images/Profile1.png'))
                  ],
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                    width: 0.7.sw,
                    height: 1,
                    decoration: BoxDecoration(
                        color:  Color(0x26c2996e)
                    )
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style:  TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Axiforma",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.sp,
                              color: Color(0xff8829e1),
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'Angelina '),
                              TextSpan(text: ' Figueroa', style:  TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 0.01.sh,
                        ),
                        Row(
                          children: [
                            Text(
                              "Grade ",
                              style:  TextStyle(
                                  color:   Color(0xff949494),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Axiforma",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.1.sp
                              ),
                            ),
                            Text(
                              "7B ",
                              style:  TextStyle(
                                  color:   Color(0xff949494),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Axiforma",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.1.sp
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.01.sh,
                        ),
                        Row(
                          children: [
                            Text(
                              "Good Attendance",
                              style:  TextStyle(
                                  color:   Color(0xffe8a420),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Axiforma",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.1.sp
                              ),
                            ),
                            SizedBox(
                              width: 0.02.sw,
                            ),
                            Text(
                                "80%",
                                style:  TextStyle(
                                    color:   Color(0xffe8a420),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Axiforma",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 10.1.sp
                                ),
                                textAlign: TextAlign.left
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.12.sw,
                    ),
                    Image(image: AssetImage('assets/images/Profile1.png'))
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 0.1.sw,top: 0.01.sh
            ),
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/LockLogo.png'),height: 20,),
                SizedBox(
                  width: 0.03.sw,
                ),
                Text(
                    "reset password",
                    style:  TextStyle(
                        color:   Color(0xff787878),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Axiforma",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.sp
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
