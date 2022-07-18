import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Profile',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body:  Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.only(left: 36, top: 23),
    width: 1.sw - 40,
    height: 0.79.sh,
    decoration: BoxDecoration(
    color: Colors.black12,
    borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
          // Hello,
          Text(
          "Hello,",
          style: const TextStyle(
              color:  const Color(0xffe8a420),
              fontWeight: FontWeight.w300,
              fontFamily: "Axiforma",
              fontStyle:  FontStyle.normal,
              fontSize: 18.0
          ),
          ),
                    Text(
                      "Donovan Vargas,",
                      style: const TextStyle(
                          color:  const Color(0xff517bfa),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Axiforma",
                          fontStyle:  FontStyle.normal,
                          fontSize: 19.0
                      ),
                    ),

                  ],
                ),
                Container(child: Image(image: AssetImage('assets/images/Profile1.png'),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
