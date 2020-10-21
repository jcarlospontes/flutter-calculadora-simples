
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dell_calculadora/main.dart';

void main() {
  testWidgets('Teste para calculos mostrados na calculadora', (WidgetTester tester) async {

    tester.binding.window.physicalSizeTestValue = Size(2000, 2000);

    await tester.pumpWidget(Calculadora());

    //teste de soma
    await tester.tap(find.text('9'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('9'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('9+9 = 18'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste de subtracao
    await tester.tap(find.text('2'));
    await tester.tap(find.text('0'));
    await tester.tap(find.text('-'));
    await tester.tap(find.text('1'));
    await tester.tap(find.text('0'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('20-10 = 10'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste de multiplicacao
    await tester.tap(find.text('9'));
    await tester.tap(find.text('*'));
    await tester.tap(find.text('9'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('9*9 = 81'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste de divisao
    await tester.tap(find.text('9'));
    await tester.tap(find.text('0'));
    await tester.tap(find.text('/'));
    await tester.tap(find.text('9'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('90/9 = 10.0'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste divisao por 0
    await tester.tap(find.text('9'));
    await tester.tap(find.text('/'));
    await tester.tap(find.text('0'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('9/0'),findsOneWidget);
    await tester.tap(find.text('Clear'));

  });
}
