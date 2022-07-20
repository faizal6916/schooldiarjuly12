import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/paidFee.dart';

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
          PaidFeeWidget(),
          PaidFeeWidget()
        ],
      ),
    );
  }
}
