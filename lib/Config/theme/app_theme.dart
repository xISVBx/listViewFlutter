import 'package:flutter/material.dart';


const Color _customeColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customeColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme{
  final int selectedColor;
  AppTheme({required this.selectedColor}):
  assert(selectedColor>=0 && selectedColor<_colorThemes.length,'Color must be between 0 and ${_colorThemes.length -1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}