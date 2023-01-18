import 'package:flutter/material.dart';



class button1 extends StatelessWidget {
  final String textOfButton;
  final Function action;
  const button1({super.key, required this.textOfButton, required this.action});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 45,
      margin: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            textOfButton,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(20, 156, 174, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation : 5,
            shadowColor: Colors.black.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () => {
            action(),
          },
        ), 
      );
  }
}

class button2 extends StatelessWidget {
  final String textOfButton;
  final Function action;
  const button2({super.key, required this.textOfButton, required this.action});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 45,
      margin: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            textOfButton,
            style: TextStyle( 
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            side: const BorderSide(
                width: 2, // the thickness
                color: Colors.white // the color of the border
            ),
          ),
          onPressed: () => {
            action(),
          },
        ),
    );
  }
}

class button3 extends StatelessWidget {
  final String textOfButton;
  final Function action;
  const button3({super.key, required this.textOfButton, required this.action});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 45,
      margin: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            textOfButton,
            style: TextStyle( 
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(28, 178, 171, 1),
            elevation : 5,
            shadowColor: Colors.black.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

          ),
          onPressed: () => {
            action(),
          },
        ),
    );
  }
}