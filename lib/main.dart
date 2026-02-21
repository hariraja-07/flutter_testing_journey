import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'user_model.dart';
import 'user_repository.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Random User',
      home: UserScreen(repository: UserRepository(client: http.Client() , random: Random())),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserScreen extends StatefulWidget{
  final UserRepository repository;

  const UserScreen({super.key, required this.repository});

  @override  
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>{
  User? user;
  bool isLoading = false;

  Future<void> _fetchUser() async{
    setState(() {
      isLoading = true;
    });

    try {
      final fetchedUser = await widget.repository.getRandomUser();
      setState(() {
        user = fetchedUser;
        isLoading = false;
      });
    }catch(e){
      setState(() {
        isLoading = false;
      });
    }
  }

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random User'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isLoading) const CircularProgressIndicator(),
            if(user != null) Text(user.toString()),
            ElevatedButton(
              onPressed: isLoading ? null : _fetchUser, 
              child: const Text("Get Random User")
            ),            
          ],
        ),
      ),
    );
  }
}