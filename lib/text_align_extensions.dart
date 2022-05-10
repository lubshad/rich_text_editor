import 'package:flutter/material.dart';

extension TextAlignExtenstion on TextAlign {
  Widget get icon {
    switch (this) {
      case TextAlign.left:
        return const Icon(Icons.format_align_left);
      case TextAlign.right:
        return const Icon(Icons.format_align_right);

      case TextAlign.center:
        return const Icon(Icons.format_align_center);

      case TextAlign.justify:
        return const Icon(Icons.format_align_justify);

      case TextAlign.start:
        return const Icon(Icons.format_align_left);

      case TextAlign.end:
        return const Icon(Icons.format_align_right);
    }
  }
}
