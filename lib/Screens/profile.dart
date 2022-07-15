import 'package:flutter/material.dart';
import 'package:school_diary2022/Widgets/bottomNavBar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/customAppbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //final _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> _key = GlobalKey();
  // _openDrawer(){
  //   _scaffoldKey.currentState!.openDrawer();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: CustomAppBar(name: true,title: 'Home',appHeight: 200,centreText: false,globalKey: _key),
      drawer: SideBar(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
