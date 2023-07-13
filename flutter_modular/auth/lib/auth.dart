import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          onChanged: (String text) {
            email = text;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'EMAIL',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (String text) {
            password = text;
          },
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'PASSWORD',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            if (email == 'david@mpto.gov.br' && password == '123') {
              print('');
            }
          },
          child: const Text('Enter'),
        )
      ]),
    ));
  }
}
