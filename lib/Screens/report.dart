import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Services/backbuttonCtrl.dart';
import '../Widgets/bottomNavBar.dart';
import './Report_Cards/exam.dart';
import './Report_Cards/reports.dart';
import './Report_Cards/hall_tickets.dart';


import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';
import './notifications.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> with TickerProviderStateMixin {

  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return WillPopScope(
      onWillPop:() => OnMoveBackwards().onWillPopBottom(context: context),
      child: Scaffold(
        endDrawer: NotificationScreen(),
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: BottomNavBar(menuClr: Color(0xffffc8d1),menuIndex: 4,secndClr: Color(0xfffff6f7),icnClr: Color(0xfffd3a84)),
        drawer: SideBar(),
        key: _key,
        appBar: CustomAppBar(
          title: 'Assessments',
          globalKey: _key,
          name: false,
          appHeight: 100,
        ),
        body: Column(
          children: [
            Container(
             width: 1.sw,
              //width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              height: 50,
              child: TabBar(

                controller: _tabController,
                //isScrollable: true,
                labelColor: Color(0xff34378b),
                labelStyle: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: 'Axiforma'),
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.white),
               indicatorColor: Color(0xff34378b),
               // indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor:
                Color(0xFF414D55).withOpacity(0.36),
                tabs: [
                  Tab(text: 'Exams',),
                  Tab(text: 'Reports',),
                  Tab(text: 'Hall Tickets',)
                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 1.sh - 260,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ExamsView(),
                  ReportsView(),
                  HallTicketView(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
