import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
  Size get preferredSize => Size.fromHeight(150);

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
          //Container(),
          InkWell(
            onTap: () {
              _selectChildPopUp(context: context);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 10),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20,
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
            ),
          ),
        ],
      ),
    );
  }

  _selectChildPopUp({
    required BuildContext context,
  }) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Select child',style: TextStyle(
            fontSize: 16.sp
          ),),
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
          borderRadius: BorderRadius.circular(15)
        ),
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
                  SizedBox(height: 5,),
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
  admissionAndgrdStyle() => TextStyle(
      color: Color(0xff34378b).withOpacity(0.5),
      fontWeight: FontWeight.w400,
      fontFamily: "Axiforma",
      fontSize: 12.sp);
}
