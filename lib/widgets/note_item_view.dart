import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteItemView extends StatelessWidget {
  const NoteItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(itemBuilder: (context, index) {
        const Padding(padding: EdgeInsets.zero);
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NoteItem(),
        );
      }),
    );
  }
}
