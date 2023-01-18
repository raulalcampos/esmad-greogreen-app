import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.teal),
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            title: Center(
              // ignore: prefer_const_constructors
              child: Text(
                'Contact Us',
                style: const TextStyle(color: Colors.teal),
              ),
            )),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Nome',
                textAlign: TextAlign.right,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email',
                textAlign: TextAlign.right,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Subject',
                textAlign: TextAlign.right,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Message',
                textAlign: TextAlign.right,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 385,
                height: 150,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  'We will respond as soon as possible.',
                  textAlign: TextAlign.center,
                ),
              ),
              Column(children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: (() {
                    showDialog(
                      context: context,
                      builder: ((context) => CupertinoAlertDialog(
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                            title: const Text('Message Sent'),
                            content: const Text(
                                'We will respond as soon as possible!'),
                          )),
                    );
                  }),
                  child: const Text('SEND MESSAGE'),
                )),
              ])
            ]));
  }
}