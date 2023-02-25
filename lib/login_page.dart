import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: const InputDecoration(
                      labelText: 'e-mail', border: OutlineInputBorder())),
              const SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'password', border: OutlineInputBorder()),
              ),
              ElevatedButton(onPressed: () {
                if (email.contains('@') && password == '123') {
                  print(true);
                } else {
                  print(false);
                }
              }, child: const Text('Log on'))
            ],
          ),
        ),
      ),
    );
  }
}
