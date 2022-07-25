import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Screens/login.dart';

class OnMoveBackwards {
  Future<bool> onWillPop({required BuildContext context}) async {
    final shouldPop = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Center(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xfffc5c65),
                    fontSize: 16.sp,
                    fontFamily: 'Axiforma',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              content: Container(
                width: double.infinity,
                height: 20,
                child: Center(
                  child: Text('Are you sure want to Logout'),
                ),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color(0xff8e2de2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('Yes'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('No'))
                  ],
                )
              ],
            ));
    return shouldPop ?? false;
  }

  Future<bool> onWillPopBottom({required BuildContext context}) async {
    Navigator.pushReplacementNamed(context, '/home');
    return true;
  }
}
