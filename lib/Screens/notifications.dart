import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Notifications',style: TextStyle(color: Colors.black54,fontFamily: 'Axiforma'),),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_outlined,color: Colors.black54,)),
      ),
      body: ListView(
        children: [
          eachNotification(),
          eachNotification(),
          eachNotification(),
          eachNotification(),
          eachNotification(),
          eachNotification(),
          eachNotification(),
          eachNotification(),


        ],
      ),
    );
  }
Widget eachNotification()=> Container(
  margin: EdgeInsets.only(bottom: 10,right: 15,left: 15),
  width: 1.sw,
  height: 100,

  child: Row(children: [Stack(
    children: [
       Padding(
         padding: const EdgeInsets.only(left: 70),
         child: Container(
           padding: EdgeInsets.all(15),
         height: 90,
         width: 280,
           decoration: BoxDecoration(color: Color(0xfff7fbfe),borderRadius: BorderRadius.all(Radius.circular(8)),),
     child: Text('HS - Periodic Test -II Report has been published for your child MOHAMED ARSHAD BIN SAMIR'),
         ),
       ),
      Padding(
        padding: const EdgeInsets.only(left: 15,top: 14),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0xffe8f2f3),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Image(image: AssetImage('assets/images/notificationlogo.png'),height: 50,width: 50,),
              ),
            ],
          ),
        ),
      ),
    ],
  )],),
);
}
