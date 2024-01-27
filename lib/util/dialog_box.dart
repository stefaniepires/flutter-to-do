import 'package:flutter/material.dart';
import 'package:to_do/util/btn.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF343a40),
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Get user input
            TextField(
              controller: controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF343a40),
                  ),
                ),
                hintText: "Add a new Task",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            // Buttons save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Save button
                Button(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                // Cancel button
                Button(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
