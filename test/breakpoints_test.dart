import 'package:breakpoints/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('adds one to input values', (WidgetTester tester) async {
    await tester.pumpWidget(Builder(builder: (BuildContext context) {
      final width = MediaQuery
          .of(context)
          .size
          .width;

      final breakpoints = Breakpoints();

      expect(breakpoints.getScreenWidth(context), width);

      return Container();
    }));
  });
}
