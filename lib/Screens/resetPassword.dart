import 'package:flutter/material.dart';
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
      body: Container(
        width: 100,
        height: 100,
        color: Colors.red,
        child: Text('jffgfj'),
      ),
    );
  }
}
