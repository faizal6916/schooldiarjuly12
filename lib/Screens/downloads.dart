import 'package:flutter/material.dart';

import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Downloads',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
    );
  }
}
