import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Screens/about.dart';
import 'package:school_diary2022/Screens/downloads.dart';
import 'package:school_diary2022/Widgets/customAppbar.dart';
import 'package:school_diary2022/Widgets/sideBar.dart';
import './profile.dart';
import './report.dart';

import './Bottom_Menu/circular_main_page.dart';
import './Bottom_Menu/assignment_main_page.dart';
import './Bottom_Menu/calendar_main_page.dart';
import './Bottom_Menu/fee_main_page.dart';
import './notifications.dart';
import 'login.dart';
import 'my_profile.dart';
import 'resetPassword.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void demo(){
    print('hello');
  }


  List<Map<String, Object>> _pages = [
    {
      'page': ProfileScreen(),
      'title': 'Name',
      'textCentre': false,
      'isName': true
    },
    {
      'page': CircularMainScreen(),
      'title': 'Circular',
      'textCentre': true,
      'isName': false
    },
    {
      'page': AssignmentMainScreen(),
      'title': 'Assignments',
      'textCentre': true,
      'isName': false
    },
    {
      'page': CalendarMainScreen(),
      'title': 'Calendar',
      'textCentre': true,
      'isName': false
    },
    {
      'page': FeeMainScreen(),
      'title': 'Fee Details',
      'textCentre': true,
      'isName': false
    },
    {
      'page': ReportScreen(),
      'title': 'Assessments',
      'textCentre': true,
      'isName': false
    },
    {
      'page': AboutSceen(),
      'title': 'About',
      'textCentre': true,
      'isName': false
    },
    {
      'page': DownloadScreen(),
      'title': 'Downloads',
      'textCentre': true,
      'isName': false
    },
    {
      'page': MyProfileScreen(),
      'title': 'Profile',
      'textCentre': true,
      'isName': false
    },
    {
      'page': ResetPassword(),
      'title': 'Reset Password',
      'textCentre': true,
      'isName': false
    },
  ];
  int _seletedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _seletedPageIndex = index;
    });
  }

  void _errorshowSnackBar({required String errText,required Color bgclr}){
    _key.currentState!.showSnackBar(SnackBar(content: Text(errText),backgroundColor: bgclr,margin: EdgeInsets.all(8),
      behavior: SnackBarBehavior.floating,),);
  }
  //void _validateReset({String current})
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      // extendBody: true,

      backgroundColor: Colors.grey.shade200,
      key: _key,
      // appBar: CustomAppBar(
      //     title: _pages[_seletedPageIndex]['title'] as String,
      //     name: _pages[_seletedPageIndex]['isName'] as bool,
      //     globalKey: _key,
      //     appHeight: 120,
      //     centreText: _pages[_seletedPageIndex]['textCentre'] as bool),
      drawer: Drawer(
        child: Container(
          width: double.infinity,
          height: 1.sh,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                width: double.infinity,
                height: 1.sh - 140,
                // color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.06.sh,
                    ),
                    buildHeader(
                      urlImage:
                          'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                      name: 'Christopher Howard',
                      email: 'how@gamil.com',
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Divider(
                      thickness: 2,
                      color: Color(0xfffed330),
                    ),
                    _drawerItem(
                        imgLoc: 'assets/images/homeicon.png',
                        menuTitle: 'Home',
                        menuIndex: 0),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade200,
                      indent: 0.1.sw,
                    ),
                    _drawerItem(
                        imgLoc: 'assets/images/ic_about.png',
                        menuTitle: 'About',
                        menuIndex: 6),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade200,
                      indent: 0.1.sw,
                    ),
                    _drawerItem(
                        imgLoc: 'assets/images/ic_downloads.png',
                        menuTitle: 'Downloads',
                        menuIndex: 7),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade200,
                      indent: 0.1.sw,
                    ),
                    _drawerItem(
                        imgLoc: 'assets/images/ic_profile.png',
                        menuTitle: 'My Profile',
                        menuIndex: 8),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade200,
                      indent: 0.1.sw,
                    ),
                    _drawerItem(
                        imgLoc: 'assets/images/ic_report_card.png',
                        menuTitle: 'Report Cards',
                        menuIndex: 5),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade200,
                      indent: 0.1.sw,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade100,
                        //image: DecorationImage(image: AssetImage('assets/images/dubai.png'))
                      ),
                      child: Image(
                        image: AssetImage('assets/images/dubai.png'),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black54,
                      indent: 0.05.sw,
                      endIndent: 0.05.sw,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Center(
                                        child: Text(
                                          'Logout',
                                          style: TextStyle(
                                            color: Color(0xfffc5c65),
                                            fontSize: 16.sp,
                                            fontFamily: 'Axiforma',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      content: Container(
                                        width: double.infinity,
                                        height: 20,
                                        child: Center(
                                          child: Text(
                                              'Are you sure want to Logout'),
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginScreen(),
                                                  ),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                primary: Color(0xff8e2de2),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              child: Text('Yes'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  primary: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('No'))
                                          ],
                                        )
                                      ],
                                    ));
                          },
                          child: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: Color(0xfffc5c65),
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Log Out',
                                  style: TextStyle(
                                    color: const Color(0xff787878),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            width: 160,
                            child: _drawerItem(
                                imgLoc: 'assets/images/Unlock@2x.png.png',
                                menuTitle: 'Reset Password',
                                menuIndex: 9)),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).pop();
                        //     Navigator.pushNamed(context, '/resetpassword');
                        //   },
                        //   child: SizedBox(
                        //     width: 150,
                        //     child: Row(
                        //       children: [
                        //         Icon(
                        //           Icons.lock,
                        //           color: Color(0xff25dbdc),
                        //         ),
                        //         SizedBox(
                        //           width: 5,
                        //         ),
                        //         Text('Reset password')
                        //       ],
                        //     ),
                        //   ),
                        // )
                        //_drawerItem(imgLoc: 'assets/images/Unlock@2x.png.png', menuTitle: 'Reset Password', menuIndex: 9)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      endDrawer: NotificationScreen(),
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
          ),
          Container(
            width: 1.sw,
            height: _pages[_seletedPageIndex]['isName'] as bool ? 130 : 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/MaskGroup3.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _key.currentState!.openDrawer(),
                  child: Container(
                    //color: Colors.blue,
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 6),
                    child: Image(
                      image: AssetImage('assets/images/menu.png'),
                      width: 40,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                _pages[_seletedPageIndex]['isName'] as bool
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                                color: const Color(0xffe8a420),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Axiforma",
                                fontSize: 16.sp),
                          ),
                          SizedBox(
                              width: 70,
                              child: Text(
                                'Stephen Flemming',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: const Color(0xfffed330),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp),
                              ),)
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.only(top: 20),
                        // color: Colors.red,
                        width: 1.sw - 126,
                        height: 50,
                        child: Center(
                            child: Text(
                          _pages[_seletedPageIndex]['title'] as String,
                          style: TextStyle(
                            fontFamily: 'Axiforma',
                            color: Colors.white,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),),),
                _pages[_seletedPageIndex]['isName'] as bool
                    ? Container()
                    : InkWell(
                        onTap: () {
                          _selectChildPopUp(context: context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8, top: 8),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 18,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
                                    placeholder: (context, url) => SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                      'assets/images/userImage.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ),
              ],
            ),
          ),
          Positioned(
              top: _pages[_seletedPageIndex]['isName'] as bool ? 80 : 77,
              child: Container(
                width: 1.sw,
                height: 1.sh - 170,
                child: ListView(
                  children: [
                    _pages[_seletedPageIndex]['page'] as Widget,
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: _customBottomNavBar(),
      //backgroundColor: Colors.red,
      // bottomNavigationBar: Container(
      //   width: double.infinity,
      //   height: 80,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(25),
      //       topRight: Radius.circular(25)
      //     ),boxShadow: [
      //     BoxShadow(color: Colors.black, blurRadius: 5, offset: Offset(1, 1))
      //   ]
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(25),
      //         topRight: Radius.circular(25)
      //     ),
      //     child: BottomNavigationBar(
      //       selectedItemColor: Colors.purple,
      //       //unselectedItemColor: Colors.black12,
      //       unselectedItemColor: Colors.grey,
      //       currentIndex: _seletedPageIndex,
      //       onTap: _selectPage,
      //         type: BottomNavigationBarType.fixed,
      //       selectedFontSize: 10.sp,
      //       unselectedFontSize: 10.sp,
      //       iconSize: 16.sp,
      //       //backgroundColor: Colors.red,
      //
      //       items: [
      //
      //         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //         BottomNavigationBarItem(icon: Icon(Icons.campaign_outlined),label: 'Circular'),
      //         BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined),label: 'Assignment'),
      //         BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),label: 'Calendar'),
      //         BottomNavigationBarItem(icon: Icon(Icons.payments_outlined),label: 'Fee'),
      //         BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: 'Assessment')
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget _customBottomNavBar() => Container(
        width: double.infinity,
        height: 90,
        padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(1, 1),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navBarItem(
                navIcon: Icons.campaign_outlined,
                navLabel: 'Circular',
                indexPassed: 1,
                selectedBg: Color(0xffffc8d1),
                selectedBgScnd: Color(0xfffff6f7),
                icnColor: Color(0xfffd3a84)),
            navBarItem(
                navIcon: Icons.menu_book_outlined,
                navLabel: 'Assignment',
                indexPassed: 2,
                selectedBg: Color(0xffaddcff),
                selectedBgScnd: Color(0xffeaf6ff),
                icnColor: Color(0xff5558ff)),
            navBarItem(
                navIcon: Icons.calendar_month_outlined,
                navLabel: 'Calendar',
                indexPassed: 3,
                selectedBg: Color(0xffffbef9),
                selectedBgScnd: Color(0xfffff1ff),
                icnColor: Color(0xffa93aff)),
            navBarItem(
                navIcon: Icons.payments_outlined,
                navLabel: 'Fee',
                indexPassed: 4,
                selectedBg: Color(0xffc3ffe8),
                selectedBgScnd: Color(0xfff0fff4),
                icnColor: Color(0xff00b59c)),
            navBarItem(
                navIcon: Icons.pie_chart,
                navLabel: 'Assessment',
                indexPassed: 5,
                selectedBg: Color(0xffffc8d1),
                selectedBgScnd: Color(0xfffff6f7),
                icnColor: Color(0xfffd3a84))
          ],
        ),
      );
  Widget navBarItem(
          {required IconData navIcon,
          required String navLabel,
          required int indexPassed,
          required Color selectedBg,
          required Color selectedBgScnd,
          required Color icnColor}) =>
      InkWell(
        onTap: () {
          setState(() {
            _seletedPageIndex = indexPassed;
          });
        },
        child: Container(
          width: 70,
          height: 70,

          // decoration: BoxDecoration(
          //   color: Colors.grey,
          //   borderRadius: BorderRadius.circular(30)
          //
          // ),
          child: Column(
            children: [
              Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      //color: Colors.grey,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: _seletedPageIndex == indexPassed
                              ? [selectedBg, selectedBgScnd]
                              : [Color(0xfff2f2f2), Color(0xfff2f2f2)]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    navIcon,
                    color: _seletedPageIndex == indexPassed
                        ? icnColor
                        : Color(0xff818181),
                  )),
              Text(
                navLabel,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: 'Axiforma',
                  fontWeight: FontWeight.w400,
                  color: _seletedPageIndex == indexPassed
                      ? icnColor
                      : Color(0xff787878),
                ),
              )
            ],
          ),
        ),
      );

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(urlImage),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Color(0xff517bfa),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Axiforma',
                    fontSize: 15.sp),
              ),
              Text(
                email,
                style: TextStyle(
                  color: Color(0xffe8a420),
                  fontSize: 12.sp,
                  fontFamily: 'Axiforma',
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _drawerItem(
          {required String imgLoc,
          required String menuTitle,
          required int menuIndex}) =>
      InkWell(
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            _seletedPageIndex = menuIndex;
          });
        },
        child: Container(
          width: double.infinity,
          height: 40,
          //padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Image(
                image: AssetImage(imgLoc),
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                menuTitle,
                style: TextStyle(
                  color: const Color(0xff787878),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Axiforma",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      );

  Widget singleChildDetail(
          {required String name,
          required String admnNo,
          required String grade}) =>
      Container(
        width: double.infinity,
        height: 120,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.purple,
              child: CircleAvatar(
                radius: 28,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
                    placeholder: (context, url) => SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/userImage.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 140,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color(0xff34378b),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Axiforma",
                      fontSize: 13.sp,
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 18,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Color(0xffececf9),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'ADMN NO : ${admnNo}',
                      style: admissionAndgrdStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 130,
                    height: 18,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Color(0xffececf9),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Grade : ${grade}',
                      style: admissionAndgrdStyle(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  _selectChildPopUp({
    required BuildContext context,
  }) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(
            'Select child',
            style: TextStyle(fontSize: 16.sp),
          ),
          actions: [
            singleChildDetail(
                name: 'MarkBoucherMarkBoucherMarkBoucher',
                admnNo: '6916',
                grade: '6H'),
            singleChildDetail(
                name: 'MarkBoucherMarkBoucherMarkBoucher',
                admnNo: '6916',
                grade: '6H')
          ],
        ),
      );
  admissionAndgrdStyle() => TextStyle(
      color: Color(0xff34378b).withOpacity(0.5),
      fontWeight: FontWeight.w400,
      fontFamily: "Axiforma",
      fontSize: 12.sp);
}
