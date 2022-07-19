import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customPadding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Container(
        height: 1.sh,
        child: ListView(
          padding: customPadding,
          children: [
            Positioned(bottom: 0, child: bottomOfDrawer(context)),
            ListView(
              padding: customPadding,
              children: [
                SizedBox(
                  height: 0.05.sh,
                ),
                buildHeader(
                    urlImage:
                        'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                    name: 'Christopher Howard',
                    email: 'how@gamil.com'),
                SizedBox(
                  height: 0.03.sh,
                ),
                Divider(thickness: 2, color: Color(0xfffed330)),
                SizedBox(
                  height: 0.025.sh,
                ),
                buildMenuItem(
                  text: 'Home',
                  imgLocation: 'assets/images/homeicon.png',
                  onClicked: () => selectedItem(context, 4),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                  indent: 0.135.sw,
                ),
                buildMenuItem(
                  text: 'About',
                  imgLocation: 'assets/images/ic_about.png',
                  onClicked: () => selectedItem(context, 0),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                  indent: 0.135.sw,
                ),
                buildMenuItem(
                  text: 'Downloads',
                  imgLocation: 'assets/images/ic_downloads.png',
                  onClicked: () => selectedItem(context, 1),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                  indent: 0.135.sw,
                ),
                buildMenuItem(
                  text: 'MyProfile',
                  imgLocation: 'assets/images/ic_profile.png',
                  onClicked: () => selectedItem(context, 2),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                  indent: 0.135.sw,
                ),
                buildMenuItem(
                  text: 'Report Cards',
                  imgLocation: 'assets/images/ic_report_card.png',
                  onClicked: () => selectedItem(context, 3),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                  indent: 0.135.sw,
                ),
                //bottomOfDrawer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required String imgLocation,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      onTap: onClicked,
      hoverColor: Colors.white70,
      leading: Image(
        image: AssetImage(imgLocation),
        width: 30,
        height: 30,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xff787878),
            fontWeight: FontWeight.w400,
            fontFamily: 'Axiforma'),
      ),
    );
  }

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
  //--------------------------------Not Using---------------------------------//
  // Widget bottomOfDrawer({required VoidCallback onReset}) {
  //   return Container(
  //     //padding: EdgeInsets.only(left: 10),
  //     child: Column(
  //       children: [
  //         //Image(image: AssetImage('assets/images/dubai.png')),
  //         Container(
  //           height: 50,
  //           padding: EdgeInsets.all(5),
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             color: Colors.yellow.shade100,
  //             //image: DecorationImage(image: AssetImage('assets/images/dubai.png'))
  //           ),
  //           child: Image(
  //             image: AssetImage('assets/images/dubai.png'),
  //           ),
  //         ),
  //         SizedBox(
  //           height: 15,
  //         ),
  //         //Divider(thickness: 3,color: Colors.black,),
  //         Container(
  //           //margin: EdgeInsets.symmetric(horizontal: 5),
  //           width: 0.7.sw,
  //           height: 1,
  //           color: Colors.black26,
  //         ),
  //         SizedBox(
  //           height: 15,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Container(
  //               child: Row(
  //                 children: [
  //                   Icon(
  //                     Icons.arrow_circle_left_outlined,
  //                     color: Colors.red,
  //                   ),
  //                   SizedBox(
  //                     width: 4,
  //                   ),
  //                   Text(
  //                     'Logout',
  //                     style: TextStyle(
  //                       fontSize: 12.sp,
  //                       fontFamily: 'Axiforma',
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //             SizedBox(
  //               width: 30,
  //             ),
  //             InkWell(
  //               onTap: onReset,
  //               child: Row(
  //                 children: [
  //                   Image(
  //                     image: AssetImage('assets/images/Unlock@2x.png.png'),
  //                     width: 20,
  //                     height: 20,
  //                   ),
  //                   SizedBox(
  //                     width: 4,
  //                   ),
  //                   Text(
  //                     'Reset password',
  //                     style: TextStyle(
  //                         fontSize: 12.sp,
  //                         fontFamily: 'Axiforma',
  //                         decoration: TextDecoration.underline),
  //                   )
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/about');
        break;
      case 1:
        Navigator.pushNamed(context, '/downloads');
        break;
      case 2:
        Navigator.pushNamed(context, '/myprofile');
        break;
      case 3:
        Navigator.pushNamed(context, '/report');
        break;
      case 4:
        Navigator.pushNamed(context, '/home');
        break;
      case 5:
        Navigator.pushNamed(context, '/resetPassword');
        break;
      default:
        Navigator.pushNamed(context, '/home');
    }
  }
}
