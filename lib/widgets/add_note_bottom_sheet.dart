import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_fied.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxlines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}