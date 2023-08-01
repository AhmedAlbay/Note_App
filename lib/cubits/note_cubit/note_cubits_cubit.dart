import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

import '../../const.dart';

part 'note_cubits_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchnotemethod() {
    var notesbox = Hive.box<NoteModel>(KNoteBox);
    notes = notesbox.values.toList();
  }
}
