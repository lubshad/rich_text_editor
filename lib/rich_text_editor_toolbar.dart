import 'package:flutter/material.dart';
import 'package:rich_text_editor/rich_text_controller.dart';
import 'package:rich_text_editor/text_align_extensions.dart';

import 'format_buttons.dart';

class RichTextEditorToolbar extends StatelessWidget {
  const RichTextEditorToolbar({Key? key, required this.richTextController})
      : super(key: key);

  final RichTextController richTextController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...FormatButtons.values.map((e) => IconButton(
            onPressed: () => e.onPressed(richTextController), icon: e.icon)),
        ...TextAlign.values
            .where((element) =>
                !(element == TextAlign.start || element == TextAlign.end))
            .map((e) => IconButton(
                onPressed: () => richTextController.textAlign(e), icon: e.icon))
      ],
    );
  }
}
