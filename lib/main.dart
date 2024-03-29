import 'package:flutter/material.dart';
import 'package:flutter_todoapp_getx/screens/notes_list.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main()  async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NoteList(),
    );
  }
}