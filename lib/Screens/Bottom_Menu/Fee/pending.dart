import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Widgets/pendingFee.dart';

class PendingFee extends StatelessWidget {
  const PendingFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw - 80,
      //height: 1.sh/2 + 300,
      padding: EdgeInsets.all(20),
      color: Colors.grey.shade200,
      child: Stack(
        children: [
          ListView(
            children: [
              PendingFeeWidget(),
              PendingFeeWidget(),
              PendingFeeWidget(),

            ],
          ),
          Positioned(
            bottom: 0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(1.sw-40, 50),
                primary: Color(0xff24c272),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
              ),
              onPressed: () {},
              child: Text('MAKE PAYMENT',style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Axiforma'
              ),),
            ),
          ),


        ],
      ),
    );
  }
}
