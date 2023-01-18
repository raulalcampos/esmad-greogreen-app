import 'package:flutter/material.dart';

class input1 extends StatelessWidget {
  final String textOfInput;
  final bool obscured;
  final Function(String) value;
  const input1({super.key, required this.textOfInput, required this.obscured, required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 50,
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        onChanged: this.value,
        keyboardType: TextInputType.text,
        obscureText: obscured,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
              ),
          ),
          labelText: textOfInput, 
          filled: true,
          fillColor: Color.fromRGBO(244, 244, 244, 1),
        ),
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}