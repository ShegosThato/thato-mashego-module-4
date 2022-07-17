// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 10.0),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 43.0),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'User Details',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your username here... ',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password here... ',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                      nameController.clear();
                      passwordController.clear();
                      Navigator.popAndPushNamed(context, '/dash');
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You don\'t an have account?'),
              TextButton(
                child: const Text(
                  'Register here',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  //signup screen
                  Navigator.pushNamed(context, '/register');
                },
              )
                ],
              )
            ],
          )),
    );
  }
}
