import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'package:flutter_testing_journey/main.dart';
import 'package:flutter_testing_journey/user_repository.dart';

import 'package:flutter_testing_journey/user_model.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([UserRepository])
import 'user_screen_test.mocks.dart';

void main(){
  testWidgets('button shows on screen',(tester) async{
    final mockRepo = MockUserRepository();

    await tester.pumpWidget(
      MaterialApp(
        home: UserScreen(repository: mockRepo),
      )
    );

    expect(find.text('Get Random User'), findsOneWidget);
  } );

  testWidgets('loading shows when button tapped',  (tester) async {
    final mockRepo = MockUserRepository();

    when(mockRepo.getRandomUser()).thenAnswer((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      return User(id:1,name:'John',email:'john@test.com',phone: '123',website: 'john.com');
    });

    await tester.pumpWidget(MaterialApp(home: UserScreen(repository: mockRepo),));

    await tester.tap(find.text('Get Random User'));

    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();
  });
}