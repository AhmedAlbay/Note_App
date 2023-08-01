import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

part 'note_cubits_state.dart';

class NoteCubitsCubit extends Cubit<NoteCubitsState> {
  NoteCubitsCubit() : super(NoteCubitsInitial());
}
