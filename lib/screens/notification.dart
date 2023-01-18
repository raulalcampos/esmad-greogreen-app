import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List data = [
    "New recycling bin!",
    "Do not forget us!",
    "Do you know that?",
    "Together for the Planet!"
  ];

  List dados = [
    "Near me there is a new ecopoint.",
    "You haven't recycled anything this week...",
    "Does a human being produce an average (...)",
    "Thanks for using GeoGreen."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            title: Center(
              // ignore: prefer_const_constructors
              child: Text(
                'Notifications',
                style: const TextStyle(color: Colors.teal),
              ),
            )),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int i) => Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        child: Text(
                          data[i],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        child: Text(dados[i])),
                    const Divider(color: Colors.teal),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}