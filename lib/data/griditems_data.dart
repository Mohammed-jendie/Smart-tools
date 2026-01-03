import 'package:flutter/material.dart';
import 'package:smart_tools/pages/Random_page.dart';
import 'package:smart_tools/pages/tools_pages/base.dart';
import 'package:smart_tools/pages/tools_pages/bmi_page.dart';
import 'package:smart_tools/pages/tools_pages/calculator_page.dart';
import 'package:smart_tools/pages/tools_pages/car_loan_page.dart';
import 'package:smart_tools/pages/tools_pages/counter_page.dart';
import 'package:smart_tools/pages/tools_pages/easy_notes_page.dart';
import 'package:smart_tools/pages/tools_pages/inductor_page.dart';
import 'package:smart_tools/pages/tools_pages/linear_equation_page.dart';
import 'package:smart_tools/pages/tools_pages/morse_page.dart';
import 'package:smart_tools/pages/tools_pages/quadratic_page.dart';
import 'package:smart_tools/pages/tools_pages/rbg_page.dart';
import 'package:smart_tools/pages/tools_pages/resistor_page.dart';
import 'package:smart_tools/pages/tools_pages/square_footage_page.dart';
import 'package:smart_tools/pages/tools_pages/stop_watch_page.dart';
import 'package:smart_tools/pages/tools_pages/unit_converter_page.dart';


class GridItem {
  final IconData icon;
  final Color iconColor;
  final String title;
  final Widget page;

  GridItem(this.icon, this.iconColor, this.title, this.page);
}

final List<GridItem> gridItems = [
  GridItem(
    Icons.thermostat,
    Colors.amberAccent,
    "Unit Converter",
    UnitConverterPage(),
  ),
  GridItem(
    Icons.calculate_outlined,
    Colors.blueAccent,
    "Calculator",
    CalculatorPage(),
  ),
  GridItem(Icons.alarm, Colors.deepOrange, "Stop Watch", StopWatchPage()),
  GridItem(
    Icons.note_alt_outlined,
    Colors.deepPurple,
    "Easy notes",
    EasyNotesPage(),
  ),
  GridItem(
    Icons.location_on_outlined,
    Colors.green,
    "Square Footage",
    SquareFootagePage(),
  ),
  GridItem(Icons.cake_outlined, Colors.pink, "Random", RandomPage()),
  GridItem(Icons.hexagon_outlined, Colors.tealAccent, "RBG To Hex", RbgPage()),
  GridItem(
    Icons.cake_outlined,
    Colors.greenAccent,
    "Bmi Calculator",
    BmiPage(),
  ),
  GridItem(
    Icons.check_box_outline_blank_sharp,
    Colors.teal,
    "Counter",
    CounterPage(),
  ),
  GridItem(Icons.cake_outlined, Colors.lime, "Resistor Codes", ResistorPage()),
  GridItem(Icons.cake_outlined, Colors.red, "inductor Codes", InductorPage()),
  GridItem(Icons.cake_outlined, Colors.indigoAccent, "Morse", MorsePage()),
  GridItem(Icons.cake_outlined, Colors.cyan, "Car loan", CarLoanPage()),
  GridItem(Icons.cake_outlined, Colors.purple, "Number Base", Base()),
  GridItem(
    Icons.cake_outlined,
    Colors.blueGrey,
    "Linear Equation",
    LinearEquationPage(),
  ),
  GridItem(Icons.cake_outlined, Colors.redAccent, "Quadratic", QuadraticPage()),
];
