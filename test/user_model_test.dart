import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_journey/user_model.dart';

void main() {
  
  group('User Model - ',(){

    test('given valid JSON when fromJson called then returns User with correct data',(){

      //Arrange
      final json = {
        'id':1,
        'name':'ABCD',
        'email':'abc@gmail.com',
        'phone':'1234567890',
        'website':'abc.com'
      };

      //Act 
      final user = User.fromJson(json);

      //Assert 
      expect(user.id,1);
      expect(user.name, 'ABCD');
      expect(user.email, 'abc@gmail.com');
      expect(user.phone, '1234567890');
      expect(user.website, 'abc.com');
    });
  });  
}