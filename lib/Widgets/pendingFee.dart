import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingFeeWidget extends StatefulWidget {
  const PendingFeeWidget({Key? key}) : super(key: key);

  @override
  State<PendingFeeWidget> createState() => _PendingFeeWidgetState();
}

class _PendingFeeWidgetState extends State<PendingFeeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black54,
              offset: Offset(1, 1),
              //spreadRadius: 2
              blurRadius: 5)
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            //color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1, 1),
                  //spreadRadius: 2
                  blurRadius: 5,
                )
              ],
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                ),
                leftPart(date: '1 JUN 2021'),
                Positioned(
                  top: -20,
                  left: 80,
                  child: ciclePart(),
                ),
                Positioned(
                  top: 120,
                  left: 80,
                  child: ciclePart(),
                ),
                Positioned(
                  top: 30,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(
                  top: 45,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(
                  top: 60,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(
                  top: 75,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(
                  top: 90,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(
                  top: 105,
                  left: 95,
                  child: centreTile(),
                ),
                Positioned(right: 0, child: rightPart())
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget centreTile() => Container(
        width: 12,
        height: 5,
        color: Colors.white,
      );

  Widget leftPart({required String date}) => Container(
        width: 100,
        height: 140,
        child: Text(date),
        decoration: BoxDecoration(
          color: Color(0xff26de81),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
      );

  Widget ciclePart() => Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
      );

  Widget rightPart() => Container(
        width: 250,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 230,
              height: 25,
              decoration: BoxDecoration(
                  color: Color(0xff5558ff).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Receipt no.',style: receiptTextStyle(),),
                  Text(':'),
                  Text('898988989989')
                ],
              ),
            )
          ],
        ),
      );

  receiptTextStyle() =>TextStyle(
    fontFamily: 'Axiforma',
    color: Color(0xff5558ff),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
}
