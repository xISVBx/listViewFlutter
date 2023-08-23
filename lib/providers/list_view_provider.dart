import 'package:flutter/material.dart';
import 'package:list_view_mafe/models/estudiante.dart';

import '../services/estudiantes_service.dart';

class ListViewProvider extends ChangeNotifier {
  late Future<Estudiantes> list;
  ListViewProvider() {
    load();
  }

  load() {
    list = EstudiantesService().obtenerTodos();
    notifyListeners();
  }
}
