import 'package:flutter/material.dart';

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
      body: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    );
  }
}
