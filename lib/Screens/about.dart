import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widgets/bottomNavBar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/customAppbar.dart';

class AboutSceen extends StatefulWidget {
  const AboutSceen({Key? key}) : super(key: key);

  @override
  State<AboutSceen> createState() => _AboutSceenState();
}

class _AboutSceenState extends State<AboutSceen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  final Uri _url = Uri.parse('https://www.youtube.com/watch?v=Xaq-zb5Vizk');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
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
      body: Container(),
    );
  }
}
