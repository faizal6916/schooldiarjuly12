import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/bottomNavBar.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: SideBar(),
      bottomNavigationBar: BottomNavBar(),
      appBar: CustomAppBar(
        title: 'Reset Password',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 36, top: 15,right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.04.sh,
                ),
                Text('Reset',style:  TextStyle(
                    color:   Color(0xff313131),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                    fontStyle:  FontStyle.normal,
                    fontSize: 35
                ),),
                SizedBox(
                  height: 0.01.sh,
                ),
                Text('Password',style:  TextStyle(
                    color:   Color(0xff313131),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                    fontStyle:  FontStyle.normal,
                    fontSize: 35
                ),),
                SizedBox(
                  height: 0.01.sh,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Current Password',labelStyle: TextStyle(
                      color:   Color(0xff34378b),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0
                  )),
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'New Password',labelStyle: TextStyle(
                      color:   Color(0xff34378b),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0
                  )
                  ),

                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff34378b))),
                      labelText: 'Confirm Password',labelStyle: TextStyle(
                      color:   Color(0xff34378b),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0
                  )),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Container(
                  height: 0.045.sh,
                  width: 0.55.sw,
                  decoration: BoxDecoration(
                      color: Color(0xff25dbdb),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                      'UPDATE PASSWORD',
                      textAlign: TextAlign.center,
                        style:  TextStyle(
                            color:  Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontStyle:  FontStyle.normal,
                            fontSize: 13.0
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
