import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowReportCard extends StatelessWidget {
  final String headText;
  final String typeOfReport;
  final String reportDate;
  const ShowReportCard(
      {Key? key,
      required this.headText,
      required this.reportDate,
      required this.typeOfReport})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 1.sw,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.symmetric( vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0,0),
                blurRadius: 1,
                spreadRadius: 0
            ), BoxShadow(
                color: Colors.black12,
                offset: Offset(0,2),
                blurRadius: 6,
                spreadRadius: 0
            ), BoxShadow(
                color: Colors.black12,
                offset: Offset(0,10),
                blurRadius: 20,
                spreadRadius: 0
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 3,),
            Container(
              width: double.infinity,
              height: 30,
              child: Text(
                headText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color(0xff34378b),
                    fontSize: 14.sp,
                    fontFamily: 'Axiforma',
                    fontWeight: FontWeight.w700),
              ),
            ),
            //SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 20,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffc5c65)
                  ),
                  child: Center(child: Text(typeOfReport,style: TextStyle(color: Colors.white,fontFamily: 'Axiforma',fontSize: 10.sp,),)),
                ),
                Text(reportDate,style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: 'Axiforma'
                ),)
              ],
            ),
            SizedBox(height: 3,),
          ],
        ),
      ),
    );
  }
}
