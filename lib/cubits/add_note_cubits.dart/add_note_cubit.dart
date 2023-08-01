import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(KNoteBox);
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
