import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:flutter_testing_journey/main.dart';
import 'package:flutter_testing_journey/user_repository.dart';

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
}