import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_notes_state.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NotesInital());
}
