import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class AddNoteCubit extends Cubit<NotesState> {
  AddNoteCubit() : super(NotesInitial());
}
