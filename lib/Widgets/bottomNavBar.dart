import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 0.1.sh,
      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25),),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset(1, 1)
          )
        ]
      ),
      child: Row(
        children: [
          bottomMenuItem(
            menuIcon: Icons.campaign_outlined,
            menuName: 'Circular',
            onTapColor: Color(0xfffd5386),
          )
        ],
      ),
    );
  }
}

class bottomMenuItem extends StatefulWidget {
  final IconData menuIcon;
  final String menuName;
  final Color onTapColor;
  const bottomMenuItem({
    Key? key,
    required this.menuIcon,
    required this.menuName,
    required this.onTapColor
    
  }) : super(key: key);

  @override
  State<bottomMenuItem> createState() => _bottomMenuItemState();
}

class _bottomMenuItemState extends State<bottomMenuItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState((){
          isClicked = true;
        });
      },
      child: Container(
        padding: EdgeInsets.all(4),
        width: 60,
        height: 70,
        //color: Colors.red,
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: isClicked ? widget.onTapColor : Color(0xfff2f2f2),
              child: Icon(widget.menuIcon),
            ),
            SizedBox(height: 2,),
            Text(widget.menuName,style: TextStyle(
              fontSize: 11.sp,
              fontFamily: 'Axiforma',
              fontWeight: FontWeight.w400,
              color: isClicked ? widget.onTapColor : Color(0xff787878),
            ),)
          ],
        ),
      ),
    );
  }
}
