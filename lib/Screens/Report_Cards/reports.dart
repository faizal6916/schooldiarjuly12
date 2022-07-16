import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Widgets/customExpansionTile.dart';
import '../../Model/expansion_list_item.dart';
import '../../Services/generate_list.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({Key? key}) : super(key: key);

  @override
  State<ReportsView> createState() => _ReportsViewState();
}

class _ReportsViewState extends State<ReportsView> {
  List<ExpansionItems> _data = ExpansionListGeneration().generateItems(5);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw - 40,
      //height: 1.sh/2 + 300,
      padding: EdgeInsets.all(20),
      color: Colors.grey.shade200,
      child: ListView(

        children: [
          CustomExpansionTile(),
          CustomExpansionTile()
        ],
      ),
    );
  }


  //------------------Expansion list provided by flutter----------------------//

  Widget _buildListPanel() {
    return ExpansionPanelList(
      //expandedHeaderPadding: EdgeInsets.all(10),
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data
          .map<ExpansionPanel>(
            (ExpansionItems item) => ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  // return ListTile(
                  //   title: Text(
                  //     item.headerValue.toString(),
                  //   ),
                  // );

                  return Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.yellow,
                    child: Text(item.headerValue.toString(),),
                  );
                },
                // body: ListTile(
                //   title: Text(item.expandedValue.toString(),),
                // ),

               body: Container(
                 //margin: EdgeInsets.all(5),
                 width: double.infinity,
                 height: 400,
                 decoration: BoxDecoration(
                   color: Colors.yellow,
                   borderRadius: BorderRadius.circular(20)
                 ),
                 
                 child: Text(item.expandedValue.toString(),),
               ),
                isExpanded: item.isExpanded,
              backgroundColor: Colors.grey.shade200,
            ),
          )
          .toList(),
    );
  }
//------------------ End of Expansion list provided by flutter----------------//
}
