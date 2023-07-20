import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteItemView extends StatelessWidget {
  const NoteItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: NoteItem(),
      );
    });
  }
}
