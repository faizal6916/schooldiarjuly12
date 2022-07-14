import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customPadding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
                child: bottomOfDrawer()),
            ListView(
              padding: customPadding,
              children: [
                SizedBox(height: 0.05.sh,),
                buildHeader(urlImage: 'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', name: 'Christopher Howard', email: 'how@gamil.com'),
                SizedBox(height: 0.03.sh,),
                Divider(thickness: 2,color: Color(0xfffed330)),
                SizedBox(height: 0.025.sh,),
                buildMenuItem(text: 'About', imgLocation: 'assets/images/ic_about.png'),
                buildMenuItem(text: 'Downloads', imgLocation: 'assets/images/ic_downloads.png'),
                buildMenuItem(text: 'MyProfile', imgLocation: 'assets/images/ic_profile.png'),
                buildMenuItem(text: 'Report Cards', imgLocation: 'assets/images/ic_report_card.png'),
                //bottomOfDrawer(),
              ],
            ),
          ],
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget buildMenuItem({required String text, required String imgLocation}){
    return ListTile(
      leading: Image(image: AssetImage(imgLocation),width: 30,height: 30,),
      title: Text(text,style: TextStyle(
        fontSize: 12.sp,
        color: Color(0xff787878),
        fontWeight: FontWeight.w400,
        fontFamily: 'Axiforma'
      ),),
    );
  }

  Widget buildHeader({required String urlImage, required String name, required String email}){
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CircleAvatar(radius: 30,backgroundImage: NetworkImage(urlImage),),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                color: Color(0xff517bfa),
                fontWeight: FontWeight.w500,
                fontFamily: 'Axiforma',
                fontSize: 15.sp
              ),),
              Text(email,style: TextStyle(color: Color(0xffe8a420),fontSize: 12.sp,fontFamily: 'Axiforma'),)
            ],
          )
        ],
      ),
    );
  }
  Widget bottomOfDrawer(){
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          //Image(image: AssetImage('assets/images/dubai.png')),
          Container(
            height: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow.shade100,
              //image: DecorationImage(image: AssetImage('assets/images/dubai.png'))
            ),
            child: Image(image: AssetImage('assets/images/dubai.png'),),
          ),
          SizedBox(height: 15,),
          //Divider(thickness: 3,color: Colors.black,),
          Container(
            //margin: EdgeInsets.symmetric(horizontal: 5),
            width: 0.7.sw,
            height: 2,
            color: Colors.black54,
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.arrow_circle_left_outlined),
                    SizedBox(width: 4,),
                    Text('Logout')
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/Unlock@2x.png.png'),width: 20,height: 20,),
                    SizedBox(width: 4,),
                    Text('reset password')
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
