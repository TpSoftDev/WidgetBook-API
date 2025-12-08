import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
// Import your Button widget from your main app
import 'package:widgetbook_app/button/button.dart';

@widgetbook.UseCase(name: 'Default', type: Button)
Widget buildButtonUseCase(BuildContext context) {
  return Button(
    text: 'Button',
    onPressed: () {
      debugPrint('Button pressed');
    },
  );
}
