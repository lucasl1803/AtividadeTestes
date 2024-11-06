
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:agendamento_crossfit/models/aula.dart';
import 'package:agendamento_crossfit/widgets/aula_list.dart';

void main() {
  testWidgets('Exibe a lista de aulas', (WidgetTester tester) async {
    final aulas = [
      Aula(id: '1', nome: 'Crossfit Básico', instrutor: 'João', data: DateTime.now()),
      Aula(id: '2', nome: 'Crossfit Avançado', instrutor: 'Ana', data: DateTime.now().add(Duration(days: 1))),
    ];

    await tester.pumpWidget(MaterialApp(
      home: AulaList(aulas: aulas),
    ));

    expect(find.text('Crossfit Básico'), findsOneWidget);
    expect(find.text('Crossfit Avançado'), findsOneWidget);
  });
}
