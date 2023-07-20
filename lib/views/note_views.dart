import 'package:flutter/material.dart';

import '../widgets/note_view_body.dart';

class NoteViews extends StatelessWidget {
  const NoteViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
