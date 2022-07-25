import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Services/backbuttonCtrl.dart';
import '../Widgets/customAppbar.dart';
import '../Widgets/sideBar.dart';
import '../Widgets/bottomNavBar.dart';
import '../Model/FilterModel/filter_data.dart';
import '../Model/FilterModel/filter_item_nodel.dart';
import '../Screens/Download/academic_in_downloads.dart';
import '../Screens/Download/cicular_in_downloads.dart';
import '../Screens/Download/exam_in_downloads.dart';
import './notifications.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void onSelected(BuildContext context, FilterMenuItem item) {
    switch (item) {
      case FilterMenu.sortByName:
        print('sort by name');
        break;
      case FilterMenu.sortByDate:
        print('sort by date');
        break;
      default:
        throw Error();
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return WillPopScope(
      onWillPop: () =>OnMoveBackwards().onWillPop(context: context),
      child: Scaffold(
          endDrawer: NotificationScreen(),
          bottomNavigationBar: BottomNavBar(
            menuClr: Color(0xfff2f2f2),
            secndClr: Color(0xfff2f2f2),
            icnClr: Color(0xff818181),
          ),
          backgroundColor: Colors.grey.shade200,
          drawer: SideBar(),
          key: _key,
          appBar: CustomAppBar(
            title: 'Downloads',
            globalKey: _key,
            name: false,
            appHeight: 100,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                width: 1.sw,
                height: 40,
                //margin: EdgeInsets.symmetric(vertical: 10),
                //margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.grey.shade200,
                child: TabBar(
                  controller: _tabController,
                  //isScrollable: true,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Axiforma',
                  ),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff25dbdc),
                  ),
                  //indicatorColor: Colors.white,
                  // indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Color(0xFF414D55).withOpacity(0.36),
                  tabs: [
                    Tab(
                      text: 'Circular',
                    ),
                    Tab(
                      text: 'Academic',
                    ),
                    Tab(
                      text: 'Exam',
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(
                        color: Color(0xff6e6e6e),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Axiforma',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    PopupMenuButton<FilterMenuItem>(
                      onSelected: (item) => onSelected(context, item),
                      icon: Icon(Icons.arrow_drop_down),
                      itemBuilder: (context) => [
                        ...FilterMenu.theFilter.map(buildItem).toList(),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 1.sw,
                height: 1.sh -305,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CicularInDownload(),
                    AcademinInDownload(),
                    ExamInDownload(),
                  ],
                ),
              )
            ],
          )),
    );
  }

  PopupMenuItem<FilterMenuItem> buildItem(FilterMenuItem item) =>
      PopupMenuItem<FilterMenuItem>(
        child: Text(item.text),
        value: item,
      );
}
