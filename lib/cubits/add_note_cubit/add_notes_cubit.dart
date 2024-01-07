import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant.dart';

part 'add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInital());
  // ignore: non_constant_identifier_names
  AddNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
