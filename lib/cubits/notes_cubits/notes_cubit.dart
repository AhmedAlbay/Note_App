import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

import '../../const.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchnotemethod() {
    var notesbox = Hive.box<NoteModel>(KNoteBox);
    notes = notesbox.values.toList();
  }
}
