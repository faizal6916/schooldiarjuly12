import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/expansion_list_item.dart';

class ExpansionListGeneration {
  List<ExpansionItems> generateItems(int numberOfItem){
    return List.generate(numberOfItem, (index) => ExpansionItems(
      headerValue: 'HS - Periodic Test - ||',
      expandedValue: 'First Item',


    ));
  }
}
