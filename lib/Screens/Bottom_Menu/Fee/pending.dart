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
      child: ListView(
        children: [
             PendingFeeWidget(),
          PendingFeeWidget(),

        ],
      ),
    );
  }
}
