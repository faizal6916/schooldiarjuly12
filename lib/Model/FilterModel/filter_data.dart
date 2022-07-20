import 'package:flutter/material.dart';
import './filter_item_nodel.dart';

class FilterMenu {
  static const List<FilterMenuItem> theFilter = [
    sortByDate,
    sortByName
  ];
  static const sortByDate = FilterMenuItem(text: 'Sort By Date');
  static const sortByName = FilterMenuItem(text: 'Sort By Name');
}
