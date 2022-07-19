import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaidFee extends StatelessWidget {
  const PaidFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw - 40,
      //height: 1.sh/2 + 300,
      padding: EdgeInsets.all(20),
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
