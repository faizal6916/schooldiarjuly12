import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Services/backbuttonCtrl.dart';
import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/bottomNavBar.dart';
import './notifications.dart';
import './homeScreen.dart' as home;

class ResetPassword extends StatefulWidget {

  const ResetPassword({Key? key,

  }) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController _currentPassword = TextEditingController();
  TextEditingController _newPassword = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();


  void _showToast(BuildContext context,String errText) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content:  Text(errText),
        backgroundColor: Colors.red,
        margin: EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  //void _errorShow() => widget.showError()
  @override
  Widget build(BuildContext context) {
    //return Scaffold(
      //key: _key,
      //drawer: SideBar(),
        //endDrawer: NotificationScreen(),
      //bottomNavigationBar: BottomNavBar(menuClr: Color(0xfff2f2f2),secndClr: Color(0xfff2f2f2),icnClr: Color(0xff818181)),
      // appBar: CustomAppBar(
      //   title: 'Reset Password',
      //   globalKey: _key,
      //   name: false,
      //   appHeight: 100,
      // ),
     // body: SingleChildScrollView(
        return WillPopScope(
          onWillPop: () =>OnMoveBackwards().onWillPop(context: context),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(left: 36, top: 15,right: 50),
                child: Form(
                  key: _formKey,
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
                          fontSize: 30.sp
                      ),),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Text('Password',style:  TextStyle(
                          color:   Color(0xff313131),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          fontStyle:  FontStyle.normal,
                          fontSize: 30.sp
                      ),),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      TextFormField(
                          controller: _currentPassword,
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
                        controller: _newPassword,
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
                        controller: _confirmPassword,
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
                      InkWell(
                        onTap: (){
                          if(_currentPassword.value == null || _currentPassword.value.text.isEmpty){
                            print('current password nil');
                            _showToast(context,'Please Enter the current password');
                          }else if(_newPassword.value == null || _newPassword.value.text.isEmpty){
                            _showToast(context,'Please Enter the new password');
                          }else if(_newPassword.value.text == _currentPassword.value.text){
                            _showToast(context,'Current password and New password should not be same');
                          }
                          else if(_confirmPassword.value == null || _confirmPassword.value.text.isEmpty){
                            _showToast(context,'Please Enter the confirm password');
                          }else if(!( _newPassword.value.text == _confirmPassword.value.text)){
                            _showToast(context,'Confirm password should match new password');
                          }else{
                            print('validation success');
                          }
                        },
                        child: Container(
                          height: 40,
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );


  }
}
