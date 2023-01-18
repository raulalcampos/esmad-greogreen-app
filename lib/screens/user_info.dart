import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'User Information',
              style: TextStyle(color: Colors.teal),
            ),
          )),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Nome',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}