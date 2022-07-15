import 'package:flutter/material.dart';

import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Assessments',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.cyanAccent,
      ),
    );
  }
}
