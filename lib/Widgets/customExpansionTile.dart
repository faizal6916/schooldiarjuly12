import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Util/util.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({Key? key}) : super(key: key);

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState((){
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        width: 1.sw,
        height: isExpanded? 670 : 160,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 125,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              //color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(1,1),
                    //spreadRadius: 2
                    blurRadius: 5
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('HS-Periodic Test - ||',style: TextStyle(
                    fontFamily: 'Axiforma',
                    color: Color(0xff34378b),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),),
                  Row(
                    children: [
                      Text('02 JUL',style: TextStyle(
                          color:  Color(0xff5c5c5c),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Axiforma",
                          fontSize: 12.sp
                      ),),
                     isExpanded? Icon(Icons.arrow_drop_up): Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),
            //SizedBox(height: 15,),
            isExpanded ?  Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 475,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              //color: Colors.cyanAccent,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1,1),
                        //spreadRadius: 2
                        blurRadius: 5
                    )
                  ]
              ),
              child: Column(
               children: [
                 _progressCardTitle(),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 _subjectwiseMark(subName: 'English', obtMark: '0', maxMark: '50', obtGrade: 'G'),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Column(
                       children: [
                         SizedBox(height: 20,),
                         Icon(Icons.cloud_download_outlined,color: Color(0xff6e6e6e),),
                         Text('Download file',style: Util().progressTitle(),)
                       ],
                     )
                   ],
                 ),
               ],
              ),
            ): Container()
          ],
        ),
      ),
    );
  }

  Widget _progressCardTitle ()=> Container(
    width: double.infinity,
    height: 40,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: Colors.grey.shade200
        )
      )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Subject',style: Util().progressTitle(),),
        Row(
          children: [
            Text('Mark',style: Util().progressTitle(),),
            SizedBox(width: 12,),
            Text('Total',style: Util().progressTitle(),),
            SizedBox(width: 12,),
            Text('Grade',style: Util().progressTitle(),),
            SizedBox(width: 12,),
          ],
        )
      ],
    ),
  );

  Widget _subjectwiseMark({required String subName,required String obtMark,required String maxMark,required String obtGrade}) => Container(
    width: double.infinity,
    height: 40,
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: Colors.grey.shade200
            )
        )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(subName,style: TextStyle(
            color:  Color(0xff24c272),
            fontWeight: FontWeight.w400,
            fontFamily: "Axiforma",
            fontSize: 12.sp
        ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(obtMark,style: TextStyle(
                color:  Color(0xff24c272),
                fontWeight: FontWeight.w400,
                fontFamily: "Axiforma",
                fontSize: 12.sp
            ),),
            SizedBox(width: 42,),
            Text(maxMark,style: Util().progressTitle(),),
            SizedBox(width: 42,),
            Text(obtGrade,style: TextStyle(
                color:  Color(0xff24c272),
                fontWeight: FontWeight.w400,
                fontFamily: "Axiforma",
                fontSize: 12.sp
            ),),
            SizedBox(width:20,),
          ],
        )
      ],
    ),
  );
}
