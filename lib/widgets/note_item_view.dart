import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubits_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteItemView extends StatelessWidget {
  const NoteItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {

        List <NoteModel>notes =BlocProvider.of<NoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            
            itemCount:  notes.length,
            itemBuilder: (context, index) {
            const Padding(padding: EdgeInsets.zero);
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: NoteItem(),
            );
          }),
        );
      },
    );
  }
}
