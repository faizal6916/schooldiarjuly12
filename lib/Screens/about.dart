import 'package:flutter/material.dart';
import 'package:school_diary2022/Widgets/sideBar.dart';
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
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'About Us',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    );
  }
}
