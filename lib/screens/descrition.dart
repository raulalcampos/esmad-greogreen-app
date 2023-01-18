import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Descristion extends StatefulWidget {
  const Descristion({super.key});

  @override
  State<Descristion> createState() => _DescristionState();
}

class _DescristionState extends State<Descristion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                    radius: 95,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-vector/damaged-cardboard-box-wet-broken-parcel-puddle-floor-isometric-vector-illustration_168129-1447.jpg?w=2000')),
              ),
              SizedBox(height: 20),
              Text(
                'Wet Cardboard / Paper',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'When the paper is wet or greasy,\nit must be deposited in an Undifferentiated (grey)\necopoint, as it can no longer be used.\nIf placed in the paper bin (blue), water or grease\ncan contaminate other bins in the bin.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
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
                          title: const Text('Deposited'),
                          content: const Text('Your stats have been updated!'),
                        )),
                  );
                }),
                child: const Text('DEPOSITED'),
              ),
              Text(
                'Upon clicking, this pack will go to your stats.',
                style: TextStyle(
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}