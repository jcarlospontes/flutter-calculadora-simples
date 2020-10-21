
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dell_calculadora/main.dart';

void main() {
  testWidgets('Botões na tela', (WidgetTester tester) async {

    tester.binding.window.physicalSizeTestValue = Size(2000, 2000);

    await tester.pumpWidget(Calculadora());

    //testa se todos os botoes aparecem na tela.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('Clear'), findsOneWidget);
    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('/'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('='), findsOneWidget);

  });
}
