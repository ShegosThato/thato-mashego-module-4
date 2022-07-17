// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('User Profile Page'),
      ),
    );
  }
}
