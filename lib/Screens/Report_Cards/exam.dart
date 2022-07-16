import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ExamsView extends StatelessWidget {
  const ExamsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 1.sw - 40,
          //height: 100,
            color: Colors.grey.shade200
        )
      ],
    );
  }
}
