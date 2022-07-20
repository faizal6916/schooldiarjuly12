import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingFeeWidget extends StatefulWidget {
  const PendingFeeWidget({Key? key}) : super(key: key);

  @override
  State<PendingFeeWidget> createState() => _PendingFeeWidgetState();
}

class _PendingFeeWidgetState extends State<PendingFeeWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: isExpanded? 450 : 200,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              setState((){
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              width: double.infinity,
              height: 200,
              //color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.5, 0.5),
                        //spreadRadius: 2
                        blurRadius: 1)
                  ]),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    child: Center(
                        child: Text(
                      'April',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Axiforma',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  eachfeeDetail(feeDesc: 'Amount Due', amt: 'AED 330.00'),
                  eachfeeDetail(feeDesc: 'Amount Paid', amt: 'AED 0.0'),
                  eachfeeDetail(feeDesc: 'Balance', amt: 'AED 330.00'),
                  eachfeeDetail(feeDesc: 'Due Date', amt: '01 April 2022'),
                  isExpanded ? Image(
                    image: AssetImage('assets/images/up_arrow.png'),
                    width: 20,
                    height: 20,
                  ) :
                  Image(
                    image: AssetImage('assets/images/down_arrow.png'),
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          isExpanded ?
          Container(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
            width: double.infinity,
            height: 250,
            child: Column(
              children: [
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10,),
                  child: DottedBorder(
                    radius: Radius.circular(12),
                    borderType: BorderType.RRect,
                    color: Color(0xff2884d5),
                    child: Column(
                      children: [
                        feeDetailsbottom(
                            leftText: 'Description',
                            middleText: 'Due',
                            rightText: 'Paid',
                            bgClr: Color(0x1a2884d5),
                            heading: true),
                        feeDetailsbottom(
                            leftText: 'Gcrbtp(june)',
                            middleText: 'AED 330.00',
                            rightText: 'AED 0.00',
                            bgClr: Color(0x1a2884d5),
                            third: true),
                        DottedBorder(
                          //padding: EdgeInsets.only(bottom: 2),
                          radius: Radius.circular(12),
                          borderType: BorderType.RRect,
                          color: Color(0xff24c272),
                          child: feeDetailsbottom(
                              leftText: 'Total',
                              middleText: 'AED 330.00',
                              rightText: 'AED 0.00',
                              bgClr: Color(0x1a24c272),
                              scnd: true),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(top: 25),
                  child: DottedBorder(
                      radius: Radius.circular(12),
                      borderType: BorderType.RRect,
                      color: Color(0xff24c272),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Color(0x1a24c272),
                        child: Row(
                          children: [
                            Text(
                              'Balance To Pay',
                              style: greenBoldTextStyle(),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              ':',
                              style: greenBoldTextStyle(),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'AED 330.00',
                              style: greenBoldTextStyle(),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          ) : Container()
        ],
      ),
    );
  }

  Widget eachfeeDetail({
    required String feeDesc,
    required String amt,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(
            //   width: 10,
            // ),
            SizedBox(
              width: 100,
              child: Text(feeDesc),
            ),
            // SizedBox(
            //   width: 60,
            // ),
            Text(':'),
            // SizedBox(
            //   width: 45,
            // ),
            SizedBox(
              width: 100,
              child: Text(amt),
            ),
            // SizedBox(
            //   width: 10,
            // ),
          ],
        ),
      );

  Widget feeDetailsbottom(
          {required String leftText,
          required String middleText,
          required String rightText,
          required Color bgClr,
          bool heading = false,
          bool scnd = false,
          bool third = false}) =>
      Container(
        width: double.infinity,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: bgClr,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 90,
              child: Text(
                leftText,
                style: heading
                    ? blackTextStyle()
                    : scnd
                        ? greenTextStyle()
                        : third
                            ? blueTextStyle()
                            : blackTextStyle(),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            SizedBox(
              width: 90,
              child: Text(
                middleText,
                style: heading
                    ? blackTextStyle()
                    : scnd
                        ? greenTextStyle()
                        : third
                            ? blueTextStyle()
                            : blackTextStyle(),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            SizedBox(
              width: 90,
              child: Text(
                rightText,
                style: heading
                    ? blackTextStyle()
                    : scnd
                        ? greenTextStyle()
                        : third
                            ? blueTextStyle()
                            : blackTextStyle(),
              ),
            )
          ],
        ),
      );

  blueTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff2884d5),
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  blackTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  greenTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff24c272),
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  greenBoldTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff24c272),
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      );
}
