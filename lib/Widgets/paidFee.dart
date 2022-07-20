import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';

class PaidFeeWidget extends StatefulWidget {
  const PaidFeeWidget({Key? key}) : super(key: key);

  @override
  State<PaidFeeWidget> createState() => _PaidFeeWidgetState();
}

class _PaidFeeWidgetState extends State<PaidFeeWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: isExpanded? 700 : 140,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          // BoxShadow(
          //     color: Colors.black54,
          //     offset: Offset(1, 1),
          //     //spreadRadius: 2
          //     blurRadius: 5)
        ],
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              setState((){
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              width: double.infinity,
              height: 140,
              //color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 0),
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
                  Positioned(right: 0, child: rightPart()),
                  Positioned(
                    right: 235,
                      top: -20,
                      child: ciclePart(),),
                  Positioned(
                      right: 235,
                      top: 120,
                      child: ciclePart())
                ],
              ),
            ),
          ),
        isExpanded?  Column(
          children: [
            Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 40,
                    child: Container(
                      width: 100,
                      height: 20,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text('Particulars',style: TextStyle(
                            color:  const Color(0xff6e6e6e),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontSize: 14.sp
                        ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DottedBorder(
                        color: Color(0xff19a2a0),
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        child: Container(
                          width: double.infinity,
                          height: 310,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                //color: Colors.red,
                                //padding: EdgeInsets.all(8),

                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      color: Color(0xFFf3f6fa),
                                      child: Table(
                                        children: [
                                          TableRow(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 10),
                                                child: Text(
                                                  'Tuition Fee',
                                                  style: tableTextStyle(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 20, vertical: 10),
                                                child: Text(
                                                  ':',
                                                  style: tableTextStyle(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 10),
                                                child: Text(
                                                  'AED 2563',
                                                  style: tableTextStyle(),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),),
                  ),
                ],
              ),
            //SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DottedBorder(
                color: Color(0xff26de81),
                borderType: BorderType.RRect,
                radius: Radius.circular(15),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Grand total',style: grandTotalStyle(),),
                        SizedBox(width: 55,),
                        Text('AED 6000',style: grandTotalStyle(),),
                        SizedBox(width: 2,),
                      ],
                    )
                ),),
            ),
            //SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff26de81),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    onPressed: (){}, child: Text('Get receipt by e-mail'),),
                ),
                SizedBox(width: 5,)
              ],
            ),

          ],
          //mainAxisAlignment: MainAxisAlignment.start,
        ) : Container()
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
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            date,
            style: TextStyle(
                color: Colors.white, fontSize: 16.sp, fontFamily: 'Axiforma'),
          ),
        ),
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
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      );

  Widget rightPart() => Container(
        width: 250,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 230,
              height: 25,
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xff5558ff).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Receipt no.',
                    style: receiptTextStyle(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    ':',
                    style: receiptTextStyle(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '898988989989',
                    style: receiptTextStyle(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              width: 230,
              height: 25,
              margin: EdgeInsets.symmetric(vertical: 10),
              //padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.payments_outlined,
                    color: Color(0xff6e6e6e),
                  ),
                  Text(
                    'Total Paid',
                    style: transactionStyle(),
                  ),
                  Text(
                    ':',
                    style: transactionStyle(),
                  ),
                  Text(
                    'AED 6000',
                    style: TextStyle(
                        color: Color(0xff26de81),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Axiforma",
                        fontSize: 11.sp),
                  ),
                  Icon(
                   isExpanded? Icons.arrow_drop_up : Icons.arrow_drop_down_outlined,
                    color: Color(0xff6e6e6e),
                  )
                ],
              ),
            ),
            Container(
              width: 230,
              height: 25,
              margin: EdgeInsets.only(bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xff6e6e6e),
                  ),
                  Text(
                    'Transaction date',
                    style: transactionStyle(),
                  ),
                  Text(
                    ':',
                    style: transactionStyle(),
                  ),
                  Text(
                    '01 June 2020',
                    style: transactionStyle(),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  receiptTextStyle() => TextStyle(
        fontFamily: 'Axiforma',
        color: Color(0xff5558ff),
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      );

  transactionStyle() => TextStyle(
      color: const Color(0xff6e6e6e),
      fontWeight: FontWeight.w400,
      fontFamily: "Axiforma",
      fontSize: 11.sp);
  tableTextStyle() => TextStyle(
      color: Color(0xff19a2a0),
      fontWeight: FontWeight.w400,
      fontFamily: "Axiforma",
      fontSize: 12.sp);

  grandTotalStyle() => TextStyle(
      color: Color(0xff24c272),
      fontWeight: FontWeight.w400,
      fontFamily: "Axiforma",
      fontSize: 14.0
  );
}
