import 'package:flutter/material.dart';
import 'package:dashboard/screens/login.dart';
import 'package:dashboard/screens/register.dart';
import 'package:dashboard/screens/add_screen.dart';
import 'package:dashboard/screens/dashboard.dart';
import 'package:dashboard/screens/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => login,
        '/register':(context) => register,
        '/dash':(context) => dashBoard,
        '/add':(context) => addScreen,
        '/user':(context) => userProfile,
      },
    );
  }
}

/**Screens */
LoginScreen login = const LoginScreen();
RegisterScreen register = const RegisterScreen();
DashBoard dashBoard = DashBoard();
AddScreen addScreen = const AddScreen();
UserProfile userProfile = const UserProfile();

