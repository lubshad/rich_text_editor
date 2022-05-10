import 'package:flutter/material.dart';

class RichTextController extends ChangeNotifier {
  void tougleBold() {
    print("bold");
  }

  void tougleItalic() {
    print("italic");
  }

  void tougleUnderline() {
    print("underline");
  }

  void tougleStrikethrough() {
    print("strikeThrough");
  }

  void tougleSuperscript() {
    print("superscript");
  }

  void tougleSubscript() {
    print("subscript");
  }

  void tougleNumberedList() {
    print("numberred list");
  }

  void tougleBulletList() {
    print("bullete list");
  }

  textAlign(TextAlign e) {
    print(e.toString());
  }
}
