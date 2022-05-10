import 'package:flutter/material.dart';
import 'package:rich_text_editor/rich_text_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RichTextController richTextController = RichTextController();
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            RichTextEditorToolbar(
              richTextController: richTextController,
            ),
            RichTextInputField(
              richTextController: richTextController
            ),
          ],
        ),
      ),
    );
  }
}
