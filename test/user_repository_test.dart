import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'dart:convert';

import 'package:flutter_testing_journey/user_repository.dart';

@GenerateMocks([http.Client])
import 'user_repository_test.mocks.dart';

void main(){
  group('UserRepository - ', (){
    test('given 200 response when getRandomUser called then returns User',() async{
      //Arrange
      final mockClient = MockClient();

      when(mockClient.get(any)).thenAnswer(
        (_) async => http.Response(jsonEncode({
          'id':1,
          'name':'abc',
          'email':'abc@gmail.com',
          'phone':'123',
          'website':'abc.com'
        }), 
        200),
      );

      final repo = UserRepository(client: mockClient);

      //Act 
      final user = await repo.getRandomUser();

      expect(user.id,1);
      expect(user.name,'abc');
      expect(user.email,'abc@gmail.com');
      expect(user.phone,'123');
      expect(user.website,'abc.com');
    });
  });
}