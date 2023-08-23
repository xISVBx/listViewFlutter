import 'package:flutter/material.dart';
import 'package:list_view_mafe/models/estudiante.dart';
import 'package:list_view_mafe/shared/widgets/card.dart';
import 'package:provider/provider.dart';

import '../providers/list_view_provider.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ListViewScreen();
}

class _ListViewScreen extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    ListViewProvider listViewProvider = context.watch<ListViewProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text('List')),
      body: FutureBuilder(
        future: listViewProvider.list,
        builder: (BuildContext context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.estudiante.length,
              itemBuilder: (BuildContext context, int index){
                return TarjetaEstudiante(
                  estudiante: snapshot.data!.estudiante[index]);
              },
            );
          }else{
            return TarjetaEstudiante(estudiante: Estudiante(imagen: '10.jpg', nombre: 'nombre', carrera: 'carrera', promedio: 1));
          }
        },
      )
    );
  }
}
