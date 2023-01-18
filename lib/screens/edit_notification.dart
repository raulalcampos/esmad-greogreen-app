import 'package:flutter/material.dart';

class EditNotification extends StatelessWidget {
  const EditNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          'Notificatons',
        ),
      )),
    );
  }
}