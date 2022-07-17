import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Task',
          style: TextStyle(
              fontFamily: 'RedHatMono',
              color: Colors.white,
              fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'New Task',
                  style: TextStyle(
                    fontFamily: 'RedHatMono',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 20.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Task name',
                          hintText: 'Enter your task here... ',
                          hintStyle: TextStyle(color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: const Text('Add Task'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
