part of 'note_cubits_cubit.dart';

@immutable
abstract class NoteCubitsState {}

class NoteCubitsInitial extends NoteCubitsState {}

class NoteCubitsLoading extends NoteCubitsState {}

class NoteCubitsSuccess extends NoteCubitsState {
  final List<NoteModel> notes;

  NoteCubitsSuccess(this.notes);
}

class NoteCubitsFailure extends NoteCubitsState {
  final String errMessage;

  NoteCubitsFailure(this.errMessage);
}
