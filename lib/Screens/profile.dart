import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Screens/login.dart';
import 'package:school_diary2022/Widgets/bottomNavBar.dart';
import '../Services/backbuttonCtrl.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/customAppbar.dart';
import './notifications.dart';

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
    return WillPopScope(
      onWillPop: () =>OnMoveBackwards().onWillPop(context: context),
      //child: Scaffold(
        // key: _key,
          // appBar: CustomAppBar(name: true,title: 'Home',appHeight: 200,centreText: false,globalKey: _key),
          //drawer: SideBar(),
         // endDrawer: NotificationScreen(),
         // bottomNavigationBar: BottomNavBar(menuClr: Color(0xfff2f2f2),secndClr: Color(0xfff2f2f2) ,icnClr: Color(0xff818181)),
          child: Container(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              children: [
                // CustomAppBar(
                //     name: true,
                //     title: 'Home',
                //     appHeight: 120,
                //     centreText: false,
                //     globalKey: _key),

                nameCard(
                    grade: 'Grade 12B',
                    photourl:
                        'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                    studentName: 'Christopher Howard'),
                SizedBox(height: 10,),
                Container(
                  width: 1.sw,
                  height: 1.sh - 350,
                 // margin: EdgeInsets.only(top: 50),
                  child: ListView(
                    children: [
                      listdItem(
                        dateOn: '16-07-2022',
                        headLine: 'Assignment',
                        headBorder: Color(0xff505dff),
                        headColor: Color(0x190cb1ff),
                        imgUrl:
                            'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                        matter:
                            'Assignmes un hecho estable hace demasiado tiempo que un lector',
                        subHeading: 'Pair of Linear Equations',
                        tailText: 'update On',
                        headIcon: Icons.menu_book_outlined,
                        headTextColor: Color(0xff525bff),
                        iconColor: Color(0xff5558ff),
                      ),
                      listdItem(
                        dateOn: '16-07-2022',
                        headLine: 'Circular',
                        headBorder: Color(0xfffd5186),
                        headColor: Color(0x1acd758e),
                        imgUrl:
                        'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                        matter:
                        'Voluptas vero consequuntur molestias et. Dolores fuga voluptatem. Optio laboriosam ut amet assumenda perferendis. ',
                        subHeading: 'sint vel voluptatem',
                        tailText: 'published On',
                        headIcon: Icons.campaign_outlined,
                        headTextColor: Color(0xfffd5186),
                        iconColor: Color(0xfffd5186),
                      ),
                      listdItem(
                        dateOn: '16-07-2022',
                        headLine: 'Circular',
                        headBorder: Color(0xfffd5186),
                        headColor: Color(0x1acd758e),
                        imgUrl:
                        'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                        matter:
                        'Voluptas vero consequuntur molestias et. Dolores fuga voluptatem. Optio laboriosam ut amet assumenda perferendis. ',
                        subHeading: 'sint vel voluptatem',
                        tailText: 'published On',
                        headIcon: Icons.campaign_outlined,
                        headTextColor: Color(0xfffd5186),
                        iconColor: Color(0xfffd5186),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }

  Widget nameCard(
          {required String studentName,
          required String photourl,
          required String grade}) =>
      Container(
        width: 1.sw - 40,
        height: 150,
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(1, 1),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xff8829e1),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(photourl),
                ),
              ),
            ),
            Text(
              studentName,
              style: TextStyle(
                  color: Color(0xff8829e1),
                  fontFamily: 'Axiforma',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              grade,
              style: TextStyle(
                  color: Color(0xffcd758e),
                  fontFamily: 'Axiforma',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      );
  Widget listdItem({
    required String headLine,
    required Color headColor,
    required Color headBorder,
    required String imgUrl,
    required String subHeading,
    required String matter,
    required String tailText,
    required String dateOn,
    required IconData headIcon,
    required Color headTextColor,
    required Color iconColor,
  }) =>
      Container(
        width: 1.sw - 40,
        height: 270,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(1, 1),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 125,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              //color: Colors.red,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: headColor,
                  border: Border.all(color: headBorder)),
              child: Row(
                children: [
                  Icon(headIcon,size: 18,color: iconColor,),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    headLine,
                    style: TextStyle(
                        color: headTextColor,
                        fontSize: 12.sp,
                        fontFamily: 'Axiforma'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(imgUrl),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 200,
                  height: 60,
                  child: Text(
                    subHeading,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3e3e3e),
                        fontSize: 16.sp,
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 1.sw,
              height: 60,
              child: Text(
               matter,
                style: TextStyle(
                  color: Color(0xff787878),
                  fontSize: 12.sp,
                  fontFamily: 'Axiforma',
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  tailText,
                  style: TextStyle(
                      color: Color(0xff787878),
                      fontSize: 10.sp,
                      fontFamily: 'Axiforma',
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  dateOn,
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 11.sp,
                    fontFamily: 'Axiforma',
                  ),
                )
              ],
            )
          ],
        ),
      );
}
