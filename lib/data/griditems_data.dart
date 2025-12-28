import 'package:flutter/material.dart';
import 'package:smart_tools/pages/calculator_page.dart';
import 'package:smart_tools/pages/date_calcluator_page.dart';
import 'package:smart_tools/pages/easy_notes_page.dart';
import 'package:smart_tools/pages/square_footage_page.dart';
import 'package:smart_tools/pages/stop_watch_page.dart';
import 'package:smart_tools/pages/unit_converter_page.dart';

class GridItem {
  final IconData icon;
  final String title;
  final Widget page;

  GridItem(this.icon, this.title, this.page);
}

final List<GridItem> gridItems = [
  GridItem(Icons.calculate_outlined, "Unit Converter", UnitConverterPage()),
  GridItem(Icons.calculate_outlined, "Calcluator", CalculatorPage()),
  GridItem(Icons.calculate_outlined, "Stop Watch", StopWatchPage()),
  GridItem(Icons.calculate_outlined, "Easy notes", EasyNotesPage()),
  GridItem(Icons.calculate_outlined, "Square Footage", SquareFootagePage()),
  GridItem(Icons.calculate_outlined, "Date Calcluator", DateCalcluatorPage()),
];
