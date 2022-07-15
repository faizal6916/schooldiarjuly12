import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        // appBar: CustomAppBar(name: true,title: 'Home',appHeight: 200,centreText: false,globalKey: _key),
        drawer: SideBar(),
        bottomNavigationBar: BottomNavBar(),
        body: Container(
          width: 1.sw,
          height: 1.sh,
          child: Stack(
            children: [
              CustomAppBar(
                  name: true,
                  title: 'Home',
                  appHeight: 120,
                  centreText: false,
                  globalKey: _key),
              Align(
                  alignment: Alignment(0, -0.65),
                  child: nameCard(
                      grade: 'Grade 12B',
                      photourl:
                          'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                      studentName: 'Christopher Howard')),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 1.sw,
                  height: 1.sh / 2 + 60,
                  child: ListView(
                    children: [listdItem(), listdItem(), listdItem()],
                  ),
                ),
              )
            ],
          ),
        ));
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
  Widget listdItem() => Container(
        width: 1.sw - 40,
        height: 260,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              width: 120,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 15),
              //color: Colors.red,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0x19cd758e),
                  border: Border.all(color: Color(0xfffd5186))),
              child: Row(
                children: [
                  Icon(Icons.campaign_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Circular',
                    style: TextStyle(
                        color: Color(0xfffd5586),
                        fontSize: 13.sp,
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
                  radius: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 250,
                    height: 50,
                    child: Text(
                      'sint vel voluptatem sint vel voluptatem',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff3e3e3e),
                        fontSize: 16.sp,
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500
                      ),
                    ),)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 1.sw,
              height: 60,
              child: Text('Voluptas vero consequuntur molestias et. Dolores fuga voluptatem. Optio laboriosam ut amet assumenda perferendis.',style: TextStyle(
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
                Text('Updated On',style: TextStyle(
                  color: Color(0xff787878),
                  fontSize: 10.sp,
                  fontFamily: 'Axiforma',
                  fontStyle: FontStyle.italic
                ),),
                SizedBox(width: 10,),
                Icon(Icons.calendar_month_outlined),
                SizedBox(width: 10,),
                Text('date',style: TextStyle(
                  color: Color(0xff252525),
                  fontSize: 11.sp,
                  fontFamily: 'Axiforma',
                ),)
              ],
            )
          ],
        ),
      );
}
