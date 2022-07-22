import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './Fee/paid.dart';
import './Fee/pending.dart';


import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/sideBar.dart';

class FeeMainScreen extends StatefulWidget {
  const FeeMainScreen({Key? key}) : super(key: key);

  @override
  State<FeeMainScreen> createState() => _FeeMainScreenState();
}

class _FeeMainScreenState extends State<FeeMainScreen> with TickerProviderStateMixin{
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavBar(menuClr: Color(0xffc3ffe8),menuIndex: 3,secndClr: Color(0xfff0fff4),icnClr: Color(0xff00b59c)),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Fee Details',
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
              isScrollable: true,
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
                Tab(text: 'Pending',),
                Tab(text: 'Paid',),

              ],
            ),
          ),
          Container(
            width: 1.sw,
            height: 1.sh-250,
            //margin: EdgeInsets.only(bottom: 50),
            //padding: EdgeInsets.only(bottom: 50),
            child: TabBarView(
              controller: _tabController,
              children: [
                PendingFee(),
                PaidFee()
              ],
            ),
          )
        ],
      ),
    );
  }
}
