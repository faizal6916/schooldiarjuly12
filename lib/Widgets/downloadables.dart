import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Downloadables extends StatefulWidget {
  final String date;
  final String month;
  final String topic;
  final String details;
  final String name;
   Downloadables(
      {Key? key,
      required this.date,
      required this.month,
      required this.details,
      required this.name,
      required this.topic})
      : super(key: key);

  @override
  State<Downloadables> createState() => _DownloadablesState();
}

class _DownloadablesState extends State<Downloadables> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      setState((){
        isExpanded = !isExpanded;
      });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: 1.sw,
          height: isExpanded ? 340 : 100,
          margin: EdgeInsets.symmetric( vertical: 10),
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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

                padding: EdgeInsets.fromLTRB(7, 0, 4, 0),
                width: 1.sw,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      //padding: EdgeInsets.all(5),
                      height: 50,
                      width: 0.13.sw,
                      decoration: BoxDecoration(
                        color: Color(0xff34378b),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.date,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          Text(widget.month,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        widget.details,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xff34378b),
                            fontSize: 14.sp,
                            fontFamily: 'Axiforma',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,color: Colors.grey[600],
                    ),
                  ],
                ),

              ),
              isExpanded
              ?Container(
                padding: EdgeInsets.fromLTRB(50, 15, 20, 10),
                 height: 240,
                width: 1.sw,
                decoration: BoxDecoration(  border: Border(top: BorderSide(color: Colors.grey)),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(widget.topic,style: TextStyle( color:   Color(0xffaa93cc), fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle:  FontStyle.normal,
                        fontSize: 15.0),),
                    SizedBox(height: 10,),
                    // Text('Please find the attachment Enjoy your holidays and spend an hour every day to complete the homework',style: TextStyle( color:   Color(0xffaa93cc), fontWeight: FontWeight.w400,
                    //     fontFamily: "Roboto",
                    //     fontStyle:  FontStyle.normal,
                    //     fontSize: 15.0),),
                    SizedBox(height: 15,),
                    attachmentWidget(),
                    attachmentWidget(),
                    // Row(
                    //   children: [
                    //
                    //     Container(
                    //       height: 30,
                    //       width: 250,
                    //      decoration: BoxDecoration( color: Color(0xff25dbdc),borderRadius: BorderRadius.circular(5)),
                    //     child: Row(
                    //       children: [
                    //         SizedBox(width: 10,),
                    //         Icon(Icons.attach_file,color: Color(0xffffffff),size: 20,),
                    //         SizedBox(width: 10,),
                    //         Text('Attachment 1',style: TextStyle( color:  Colors.white,
                    //             fontWeight: FontWeight.w400,
                    //             fontFamily: "Roboto",
                    //             fontStyle:  FontStyle.normal,
                    //             fontSize: 15.5.sp),),
                    //         SizedBox(width: 80,),
                    //         Icon(Icons.remove_red_eye_outlined,color: Color(0xffffffff),size: 20,),
                    //       ],
                    //     ),
                    //     ),
                    //     SizedBox(width: 5,),
                    //     Icon(Icons.share,color: Color(0xff06891fc),),
                    //   ],
                    // ),

                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Issued by ',style: TextStyle( color:   Color(0xffa6acc1),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.italic,
                            fontSize: 12.sp),),
                        Text(widget.name,style: TextStyle( color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.italic,
                            fontSize: 12.sp),)
                      ],
                    )
                  ],
                ),
              ): Container()
             ]
          ),
        ),
      ),
    );
  }
  Widget attachmentWidget()=> Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      children: [

        Container(
          height: 30,
          width: 220,
          decoration: BoxDecoration( color: Color(0xff25dbdc),borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.attach_file,color: Color(0xffffffff),size: 20,),
              SizedBox(width: 10,),
              Text('Attachment 1',style: TextStyle( color:  Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.5.sp),),
              SizedBox(width: 50,),
              Icon(Icons.remove_red_eye_outlined,color: Color(0xffffffff),size: 20,),
            ],
          ),
        ),
        SizedBox(width: 5,),
        Icon(Icons.share,color: Color(0xff06891fc),),
      ],
    ),
  );
}
