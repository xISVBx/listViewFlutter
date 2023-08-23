import 'package:flutter/material.dart';
import 'package:list_view_mafe/providers/list_view_provider.dart';
import 'package:list_view_mafe/screens/list_view_screen.dart';
import 'package:provider/provider.dart';

import 'Config/theme/app_theme.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ListViewProvider())],
      child:MaterialApp(
        title: 'Calculadora',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ListViewScreen(),
      )
    );
  }
}