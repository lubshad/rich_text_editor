import 'package:flutter/material.dart';
import 'package:rich_text_editor/rich_text_controller.dart';

enum FormatButtons {
  bold,
  italic,
  underline,
  strikeThrough,
  superscript,
  subscript,
  numberedList,
  bulletList,
}

extension FormatButtonExtenstion on FormatButtons {
  onPressed(RichTextController controller) {
    switch (this) {
      case FormatButtons.bold:
        controller.tougleBold();
        break;
      case FormatButtons.italic:
        controller.tougleItalic();
        break;
      case FormatButtons.underline:
        controller.tougleUnderline();

        break;
      case FormatButtons.strikeThrough:
        controller.tougleStrikethrough();

        break;
      case FormatButtons.superscript:
        controller.tougleSuperscript();
        break;
      case FormatButtons.subscript:
        controller.tougleSubscript();
        break;
      case FormatButtons.numberedList:
        controller.tougleNumberedList();
        break;
      case FormatButtons.bulletList:
        controller.tougleBulletList();
        break;
    }
  }

  Widget get icon {
    switch (this) {
      case FormatButtons.bold:
        return const Icon(Icons.format_bold);
      case FormatButtons.italic:
        return const Icon(Icons.format_italic);

      case FormatButtons.underline:
        return const Icon(Icons.format_underline);

      case FormatButtons.strikeThrough:
        return const Icon(Icons.format_strikethrough);

      case FormatButtons.superscript:
        return const Icon(Icons.superscript);

      case FormatButtons.subscript:
        return const Icon(Icons.subscript);

      case FormatButtons.numberedList:
        return const Icon(Icons.format_list_numbered);

      case FormatButtons.bulletList:
        return const Icon(Icons.format_list_bulleted);
    }
  }
}
