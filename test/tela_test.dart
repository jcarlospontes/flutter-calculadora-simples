import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dell_calculadora/main.dart';


main() {
  testWidgets('Teste se o conteudo do botão aparece na tela', (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(2000, 2000);

    await tester.pumpWidget(Calculadora());

    //teste da função de limpar tela e do 0
    await tester.tap(find.text('0'));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));
    await tester.tap(find.text('Clear'));
    await tester.pump();
    expect(find.text('0'),findsOneWidget);

    //testa se todos os botões numéricos saem na tela
    await tester.tap(find.text('1'));
    await tester.tap(find.text('2'));
    await tester.tap(find.text('3'));
    await tester.tap(find.text('4'));
    await tester.tap(find.text('5'));
    await tester.tap(find.text('6'));
    await tester.tap(find.text('7'));
    await tester.tap(find.text('8'));
    await tester.tap(find.text('9'));
    await tester.pump();
    expect(find.text('123456789'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste do botao +
    await tester.tap(find.text('1'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1+1'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste do botao -
    await tester.tap(find.text('1'));
    await tester.tap(find.text('-'));
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1-1'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste do botao /
    await tester.tap(find.text('1'));
    await tester.tap(find.text('/'));
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1/1'),findsOneWidget);
    await tester.tap(find.text('Clear'));

    //teste do botao *
    await tester.tap(find.text('1'));
    await tester.tap(find.text('*'));
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1*1'),findsOneWidget);
    await tester.tap(find.text('Clear'));

  });
}