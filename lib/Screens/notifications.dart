import 'package:flutter/material.dart';
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
      body: Text('Notifications'),
    );
  }
}
