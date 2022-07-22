import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Screens/notifications.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/sideBar.dart';

class CalendarMainScreen extends StatefulWidget {
  const CalendarMainScreen({Key? key}) : super(key: key);

  @override
  State<CalendarMainScreen> createState() => _CalendarMainScreenState();
}

class _CalendarMainScreenState extends State<CalendarMainScreen>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  CalendarFormat _format = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      endDrawer: NotificationScreen(),
      bottomNavigationBar: BottomNavBar(
        menuClr: Color(0xffbb49ff),
        menuIndex: 2,
      ),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Calendar',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Container(
        width: 1.sw,
        height: 1.sh - 200,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 0.5.sh,
              child: TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime(2010),
                lastDay: DateTime(2050),
                calendarFormat: _format,
                onFormatChanged: (CalendarFormat format) {
                  setState(() {
                    _format = format;
                  });
                },
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                  });
                },
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  // decoration: BoxDecoration(
                  //   color: Color(0xff34378b)
                  // )
                  titleTextStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xff34378b),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  leftChevronIcon: Icon(
                    Icons.arrow_left_outlined,
                    color: Color(0xff34378b),
                  ),
                  rightChevronIcon: Icon(
                    Icons.arrow_right_outlined,
                    color: Color(0xff34378b),
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekendStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xff34378b).withOpacity(0.5),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  weekdayStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xff34378b).withOpacity(0.5),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  holidayTextStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xfffc5c65),
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                  defaultTextStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xff5c5c5c),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  weekendTextStyle: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xfffc5c65),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    //color: Colors.yellow,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Color(0xfffed330),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Events',
                          style: eventTextStyle(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    //color: Colors.pink,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Color(0xff5fd2d0),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Exams',
                          style: eventTextStyle(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    // color: Colors.purple,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Color(0xfffc5c65),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Absent',
                          style: eventTextStyle(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            indicatorOfCalendar(),
            SizedBox(
              height: 2,
            ),
            Container(
              width: 1.sw,
              //width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              height: 30,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Color(0xff34378b),
                labelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Axiforma'),
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.white),
                indicatorColor: Color(0xff34378b),
                // indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Color(0xFF414D55).withOpacity(0.36),
                tabs: [
                  Tab(
                    text: 'Today',
                  ),
                  Tab(
                    text: 'Upcoming Events',
                  ),
                  Tab(
                    text: 'Upcoming Exams',
                  ),
                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                      width: 1.sw,
                      child: ListView(
                        children: [
                          eventShow(
                            bgColr: Color(0xfff7d794),
                            fgColr: Color(0xfff7d794).withOpacity(0.3),
                          ),
                          eventShow(bgColr: Color(0xff19a2a0), fgColr: Color(0xff19a2a0).withOpacity(0.3))
                        ],
                      )),
                  Center(child: Text('No upcoming Events')),
                  Center(child: Text('No Upcoming Exams'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget indicatorOfCalendar() => Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 2)]),
        child: Row(
          children: [
            Container(
              width: 1.sw / 3 - 20,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.purple,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '21',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Color(0xff6e6e6e),
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: Text(
                      'Days Total',
                      maxLines: 2,
                      style: indicatorTextStyle(),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 120,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
              //color: Colors.purple,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff26de81),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '21',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Colors.white,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 40,
                    child: Text(
                      'Days Present',
                      maxLines: 2,
                      style: indicatorTextStyle(),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 120,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.purple,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xfffc5c65),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '21',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Colors.white,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 40,
                    child: Text(
                      'Days Absent',
                      maxLines: 2,
                      style: indicatorTextStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  eventTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff6e6e6e),
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  indicatorTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff343434),
        fontSize: 9.5.sp,
        fontWeight: FontWeight.w600,
      );
  Widget eventShow({required Color bgColr, required Color fgColr}) => Container(
        width: 1.sw,
        height: 100,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          // color: bgColr,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // SizedBox(
            //   width: 10,
            // ),
            Container(
              width: 20,
              height: 100,
              decoration: BoxDecoration(
                  color: bgColr,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
            ),
            Container(
              width: 1.sw - 60,
              height: 100,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: fgColr,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24 December 2020',
                        style: TextStyle(
                            color: bgColr,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontSize: 11.sp),
                      ),
                      Container(
                        width: 100,
                        height: 28,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: bgColr.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            // BoxShadow(
                            //   color: Colors.black12,
                            //   blurRadius: 5,
                            //   offset: Offset(0.5,0.5)
                            //
                            // )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '3A English',
                            style: TextStyle(
                                color: bgColr,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Axiforma",
                                fontSize: 11.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Christmas Holiday',
                    style: TextStyle(
                        color: Color(0xff4c4c4c),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Axiforma",
                        fontStyle: FontStyle.normal,
                        fontSize: 18.sp),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
