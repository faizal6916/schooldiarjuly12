//--------------------------------Not Using-----------------------------------//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  final Color secndClr;
  final Color menuClr;
  final Color icnClr;
  final int? menuIndex;

  const BottomNavBar(
      {Key? key,
      required this.menuClr,
      required this.secndClr,
      this.menuIndex,
      required this.icnClr})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int? _selctedIndex;

  void _selectedMenu({required BuildContext context, required int index}) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/circularmain');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/assignmentmain');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/calendarmain');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/feemain');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/report');
        break;
      default:
        throw Error();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _selctedIndex == widget.menuIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 100,
      //padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
          bottomMenuItem(
              menuIcon: Icons.campaign_outlined,
              menuName: 'Circular',
              //onTapColor: Color(0xfffd5386),
              onTapColor: widget.menuClr,
              onTapScndclr: widget.secndClr,
              onTapIcnClr: widget.icnClr,
              indexNo: 0,
              context: context),
          bottomMenuItem(
              menuIcon: Icons.menu_book_outlined,
              menuName: 'Assignment',
              //onTapColor: Color(0xff4966ff),
              onTapColor: widget.menuClr,
              onTapScndclr: widget.secndClr,
              onTapIcnClr: widget.icnClr,
              indexNo: 1,
              context: context),
          bottomMenuItem(
              menuIcon: Icons.calendar_month_outlined,
              menuName: 'Calendar',
              //onTapColor: Color(0xffbb49ff),
              onTapColor: widget.menuClr,
              onTapScndclr: widget.secndClr,
              onTapIcnClr: widget.icnClr,
              indexNo: 2,
              context: context),
          bottomMenuItem(
              menuIcon: Icons.payments_outlined,
              menuName: 'Fee',
              //onTapColor: Color(0xff00b59c),
              onTapColor: widget.menuClr,
              onTapScndclr: widget.secndClr,
              onTapIcnClr: widget.icnClr,
              indexNo: 3,
              context: context),
          bottomMenuItem(
              menuIcon: Icons.pie_chart,
              menuName: 'Assessments',
              //onTapColor: Color(0xfffd5386),
              onTapColor: widget.menuClr,
              onTapScndclr: widget.secndClr,
              onTapIcnClr: widget.icnClr,
              indexNo: 4,
              context: context)
        ],
      ),
    );
  }

  Widget bottomMenuItem({
    required int indexNo,
    required IconData menuIcon,
    required String menuName,
    required Color onTapColor,
    required Color onTapScndclr,
    required Color onTapIcnClr,
    required BuildContext context,
  }) =>
      InkWell(
        onTap: () {
          setState(() {
            // isClicked = true;
            _selctedIndex = indexNo;

            print(indexNo);
            print('selected index${_selctedIndex}');
          });
          _selectedMenu(context: context, index: indexNo);
        },
        child: Container(
          //padding: EdgeInsets.all(4),
          width: 1.sw / 5,
          height: 70,
          //color: Colors.red,
          child: Column(
            children: [
              // CircleAvatar(
              //   radius: 20,
              //   backgroundColor:
              //       //_selctedIndex == indexNo ? onTapColor : Color(0xfff2f2f2),
              //   widget.menuIndex == indexNo ? onTapColor : Color(0xfff2f2f2),
              //   //_selctedIndex == indexNo ? Color(0xfff2f2f2) : onTapColor,
              //   child: Icon(
              //     menuIcon,
              //     color: widget.menuIndex == indexNo
              //         ? Colors.white
              //         : Color(0xff818181),
              //   ),
              // ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  // color: Color(0xff818181),
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: widget.menuIndex == indexNo
                        ? [onTapColor, onTapScndclr]
                        : [Color(0xfff2f2f2), Color(0xfff2f2f2)],
                  ),
                ),
                child: Icon(
                  menuIcon,
                  color: widget.menuIndex == indexNo
                      ? onTapIcnClr
                      : Color(0xff818181),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                menuName,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: 'Axiforma',
                  fontWeight: FontWeight.w400,
                  color:
                      _selctedIndex == indexNo ? onTapColor : Color(0xff787878),
                ),
              )
            ],
          ),
        ),
      );
}

// class bottomMenuItem extends StatefulWidget {
//   final int indexNo;
//   final IconData menuIcon;
//   final String menuName;
//   final Color onTapColor;
//   const bottomMenuItem(
//       {Key? key,
//       required this.menuIcon,
//       required this.menuName,
//       required this.onTapColor,
//       required this.indexNo})
//       : super(key: key);
//
//   @override
//   State<bottomMenuItem> createState() => _bottomMenuItemState();
// }
//
// class _bottomMenuItemState extends State<bottomMenuItem> {
//  // int? _selctedIndex;
//   bool isClicked = false;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isClicked = true;
//           _selctedIndex = widget.indexNo;
//         });
//       },
//       child: Container(
//         //padding: EdgeInsets.all(4),
//         width: 1.sw / 5,
//         height: 70,
//         //color: Colors.red,
//         child: Column(
//           children: [
//             CircleAvatar(
//               radius: 20,
//               backgroundColor:
//                   _selctedIndex == widget.indexNo ? widget.onTapColor : Color(0xfff2f2f2),
//               child: Icon(
//                 widget.menuIcon,
//                 color: Color(0xff818181),
//               ),
//             ),
//             SizedBox(
//               height: 2,
//             ),
//             Text(
//               widget.menuName,
//               style: TextStyle(
//                 fontSize: 10.sp,
//                 fontFamily: 'Axiforma',
//                 fontWeight: FontWeight.w400,
//                 color: _selctedIndex == widget.indexNo ? widget.onTapColor : Color(0xff787878),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
