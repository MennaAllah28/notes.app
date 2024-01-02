import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant.dart';

part 'add_notes_state.dart';

class NoteCubit extends Cubit<AddNotesState> {
  NoteCubit() : super(AddNotesInital());
  AddNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNotesFailure(e.toString());
    }
  }
}
