import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String user = "";
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
            user = text;
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
            if (user == 'david@mpto.mp.br' && password == '123') {
              /* Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeScreen())
              ); */
              Navigator.of(context).pushReplacementNamed('/home');
            } else {
              print('Usuário ou Senha Inválidos');
            }
          },
          child: const Text('Enter'),
        )
      ]),
    ));
  }
}
