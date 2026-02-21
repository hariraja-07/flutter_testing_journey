import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'user_model.dart';

class UserRepository {
  final http.Client client;
  final Random _random;

  UserRepository({
    required this.client,
    Random? random,
  }) : _random = random ?? Random();

  Future<User> getRandomUser() async{
    final randomId = _random.nextInt(10)+1;

    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users/$randomId'),
    );

    if(response.statusCode == 200){
      final jsonData = jsonDecode(response.body);
      return User.fromJson(jsonData);
    }else {
      throw Exception('Failed to load user: ${response.statusCode}');
    }
  }
}