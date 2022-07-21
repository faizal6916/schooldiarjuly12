import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  final double appHeight;
  final String title;
  final bool centreText;
  final bool name;
  //final Function openDrawer;
  const CustomAppBar(
      {Key? key,
      this.appHeight = 0,
      required this.title,
      this.centreText = true,
      required this.name,
      required this.globalKey})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(0.15.sh);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appHeight,
      child: AppBar(
        leading: InkWell(
          onTap: () => globalKey.currentState!.openDrawer(),
          child: Container(
            child: Image(
              image: AssetImage('assets/images/menu.png'),
              alignment: Alignment.center,
            ),
          ),
        ),
        title: name
            ? Container(
                width: 0.2.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hello,',
                      style: TextStyle(
                          color: Color(0xfffed330),
                          fontSize: 13.sp,
                          fontFamily: 'Axiforma'),
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          color: Color(0xfffed330),
                          fontSize: 15.sp,
                          fontFamily: 'Axiforma'),
                    )
                  ],
                ),
              )
            : Text(title),
        centerTitle: centreText,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff4a00e0), Color(0xff8e2de2)]),
              image: DecorationImage(
                  image: AssetImage('assets/images/appbar.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter)),
        ),
        actions: [
          Container(),
        ],
      ),
    );
  }
}
