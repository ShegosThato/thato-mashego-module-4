import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasker',
          style: TextStyle(
            fontFamily: 'RedHatMono',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              icon: const Icon(Icons.account_circle_rounded)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              icon: const Icon(Icons.menu)),
              
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text(
            "There are no tasks",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 40, 196),
                fontFamily: 'Raleway',
                fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add a new task",
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
