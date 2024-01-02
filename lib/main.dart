import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox(kNoteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
