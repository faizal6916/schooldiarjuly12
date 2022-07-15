import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:school_diary2022/Screens/profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff831EE5),
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Positioned(
                top: 0,
                child: Lottie.asset('assets/animation/Login.json')),
            Positioned(
                top: 0.125.sh,
                left: 0.55.sw,
                child: Image(image: AssetImage('assets/images/logo.png'),width: 150,height: 100,)),
            // Positioned(
            //     top: 0,
            //     child: Lottie.asset('assets/animation/Login.json')),
            Container(
              margin: EdgeInsets.only(top: 0.3.sh),
              width: 1.sw,
              height: 0.7.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  Text(
                    'Please login with registered email id',
                    style: TextStyle(fontSize: 12.sp,fontFamily: 'Axiforma',color: Color(0xff8A8CBD),fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Container(
                    width: 278,
                    height: 0.08.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xff518EF8))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 0.2.sw,
                        ),
                        Image(image: AssetImage('assets/images/Googleicon.png')),
                        SizedBox(
                          width: 0.05.sw,
                        ),
                        Text('Google',style: TextStyle(fontFamily: 'Axiforma',color: Color(0xff007AB9),fontWeight: FontWeight.w500,fontSize: 22.0871.sp),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Text('or',style: TextStyle(fontSize: 12.sp,fontFamily: 'Axiforma',fontWeight: FontWeight.w400,color: Color(0xff8A8CBD)),),
                  SizedBox(
                    height: 0.005.sh,
                  ),
                  SizedBox(
                    height: 0.1.sh,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.people,
                            color: Color(0xffD2C2FF),
                          ),
                          helperText: ' ',
                          labelText: 'Email or Mobile Number',
                          labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF7D22E1)),
                          ),
                        ),
                        style: TextStyle(fontFamily: 'Axiforma',fontWeight: FontWeight.w400,fontSize: 12.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.0005.sh,
                  ),
                  SizedBox(
                    height: 0.1.sh,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_open_outlined,
                            color: Color(0xffD2C2FF),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xffD2C2FF),
                          ),
                          helperText: ' ',
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF7D22E1)),
                          ),
                        ),
                          style: TextStyle(fontFamily: 'Axiforma',fontWeight: FontWeight.w400,fontSize: 12.sp)
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.14.sw,
                      ),
                      Icon(Icons.lock_open, color: Color(0xff8A8CBD)),
                      SizedBox(
                        width: 0.02.sw,
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 10.sp, color: Color(0xff8A8CBD),fontWeight: FontWeight.w400,fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        width: 0.18.sw,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 16.sp,fontFamily: 'Montserrat',fontWeight: FontWeight.w400),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff25DBDB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0.06.sh,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.18.sw,
                      ),
                      Image(image:AssetImage('assets/images/Benchmarklogo.png'),height: 0.056.sh,),
                      SizedBox(
                        width: 0.05.sw,
                      ),
                      Image(image:AssetImage('assets/images/GooglePic.png'),height: 0.056.sh,),
                    ],
                  ),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.12.sh,
                      ),
                      Text('Need any help?',style: TextStyle(fontSize: 8.sp,fontFamily: 'Axiforma',color: Color(0xff8A8CBD),fontWeight: FontWeight.w400),),
                      SizedBox(
                        width: 0.01.sh,
                      ),
                      Text('Contact:',style: TextStyle(fontSize: 8.sp,fontFamily: 'Axiforma',color: Color(0xff8A8CBD),fontWeight: FontWeight.w400)),
                      SizedBox(
                        width: 0.004.sh,
                      ),
                      Text('support@team-sqa.com',style: TextStyle(fontSize: 9.sp,fontFamily: 'Axiforma',color: Color(0xff8A8CBD),fontWeight: FontWeight.w400,decoration: TextDecoration.underline,))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
