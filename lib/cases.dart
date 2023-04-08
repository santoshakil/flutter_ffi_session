import 'package:flutter/material.dart' show Widget;

enum Cases {
  toForeign(
    'Dart to Foreign Function',
    'Dart function calls a foreign function with some arguments',
    null,
  ),
  fromForeign(
    'Foreign Function to Dart',
    'Data from foreign function is passed to Dart function',
    null,
  ),
  biDirectional(
    'Bi-Directional',
    'Dart function calls a foreign function and passes data back to Dart',
    null,
  ),
  realTime(
    'Real-Time',
    'Dart function calls a foreign function with real-time data',
    null,
  );

  const Cases(this.title, this.description, this.widget);

  final String title;
  final String description;
  final Widget? widget;
}
