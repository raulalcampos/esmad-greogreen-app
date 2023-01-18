import 'package:flutter/material.dart';
import '../widgets/buttons.dart';
import 'login.dart';

class firstScreen extends StatefulWidget {
  @override
  State<firstScreen> createState() {
    return firstScreenState();
  }
  
}

class firstScreenState extends State<firstScreen> {

  // Things to animate a container (we choose animate the logo)
  bool animated = false;

  void changeLogo() {
    setState(() {
      if(animated == true){
        animated = false;
      } else {
        animated = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromRGBO(37, 207, 166, 1), Color.fromRGBO(20, 156, 174, 1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new GestureDetector(
                  onTap: (() {
                    changeLogo();
                  }),
                  child: AnimatedContainer(
                    width: animated ? 500 : 300,
                    duration: Duration(milliseconds: 500),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Geo',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Green',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                new Container(
                    margin: const EdgeInsets.only(top: 15, left: 50, right: 50),
                    child: Text(
                      'Welcome to our App, here you will be able to recycle in a better way!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: button1(
                    textOfButton: "LOGIN",
                    action: () => {
                      //pushReplacement
                      Navigator.push (
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      ),
                    },
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 60),
                  child: button2(
                    textOfButton: "REGISTER NOW",
                    action: () => {
                      Navigator.push (
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      ),
                    }, 
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Need some help? ',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                        Navigator.pushNamed(context, "/faq");
                      },
                      child: Text(
                        'Click here.',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}