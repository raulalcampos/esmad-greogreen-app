import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  var containerColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(37, 207, 166, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SpinKitChasingDots(
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: DefaultTextStyle(
              child: Text('Loading...'),
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
              ),
            )
          )
        ],
      )
    );
  }
}